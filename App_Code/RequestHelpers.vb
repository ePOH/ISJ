Imports Microsoft.VisualBasic

Imports System.Linq
Imports System.Net
Imports System.Web
Imports System

Public Class RequestHelpers
    Public Shared Function GetClientIpAddress(request As HttpRequestBase) As String
        Try
            Dim userHostAddress = request.UserHostAddress

            ' Attempt to parse.  If it fails, we catch below and return "0.0.0.0"
            ' Could use TryParse instead, but I wanted to catch all exceptions
            IPAddress.Parse(userHostAddress)

            Dim xForwardedFor = request.ServerVariables("X_FORWARDED_FOR")

            If String.IsNullOrEmpty(xForwardedFor) Then
                Return userHostAddress
            End If

            ' Get a list of public ip addresses in the X_FORWARDED_FOR variable
            Dim publicForwardingIps = xForwardedFor.Split(","c).Where(Function(ip) Not IsPrivateIpAddress(ip)).ToList()

            ' If we found any, return the last one, otherwise return the user host address
            Return If(publicForwardingIps.Any(), publicForwardingIps.Last(), userHostAddress)
        Catch generatedExceptionName As Exception
            ' Always return all zeroes for any failure (my calling code expects it)
            Return "0.0.0.0"
        End Try
    End Function

    Private Shared Function IsPrivateIpAddress(ipAddress__1 As String) As Boolean
        ' http://en.wikipedia.org/wiki/Private_network
        ' Private IP Addresses are: 
        '  24-bit block: 10.0.0.0 through 10.255.255.255
        '  20-bit block: 172.16.0.0 through 172.31.255.255
        '  16-bit block: 192.168.0.0 through 192.168.255.255
        '  Link-local addresses: 169.254.0.0 through 169.254.255.255 (http://en.wikipedia.org/wiki/Link-local_address)

        Dim ip = IPAddress.Parse(ipAddress__1)
        Dim octets = ip.GetAddressBytes()

        Dim is24BitBlock = octets(0) = 10
        If is24BitBlock Then
            Return True
        End If
        ' Return to prevent further processing
        Dim is20BitBlock = octets(0) = 172 AndAlso octets(1) >= 16 AndAlso octets(1) <= 31
        If is20BitBlock Then
            Return True
        End If
        ' Return to prevent further processing
        Dim is16BitBlock = octets(0) = 192 AndAlso octets(1) = 168
        If is16BitBlock Then
            Return True
        End If
        ' Return to prevent further processing
        Dim isLinkLocalAddress = octets(0) = 169 AndAlso octets(1) = 254
        Return isLinkLocalAddress
    End Function
End Class
