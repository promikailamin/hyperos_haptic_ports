.class Landroid/util/NtpTrustedTimeInjector;
.super Ljava/lang/Object;
.source "NtpTrustedTimeInjector.java"


# static fields
.field private static final blacklist DBG:Z = true

.field private static final blacklist NTP_PORT:I = 0x7b

.field private static final blacklist TAG:Ljava/lang/String; = "NtpTrustedTimeInjector"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist requestTime(Landroid/net/SntpClient;Ljava/lang/String;ILandroid/net/Network;)Z
    .registers 12
    .param p0, "client"    # Landroid/net/SntpClient;
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "timeout"    # I
    .param p3, "network"    # Landroid/net/Network;

    .line 16
    const-string v0, "NtpTrustedTimeInjector"

    const/4 v1, 0x0

    :try_start_3
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v2

    .line 17
    .local v2, "allByName":[Ljava/net/InetAddress;
    array-length v3, v2

    move v4, v1

    :goto_9
    if-ge v4, v3, :cond_66

    aget-object v5, v2, v4

    .line 18
    .local v5, "addr":Ljava/net/InetAddress;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "host "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", which address "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    const/16 v6, 0x7b

    invoke-virtual {p0, v5, v6, p2, p3}, Landroid/net/SntpClient;->requestTime(Ljava/net/InetAddress;IILandroid/net/Network;)Z

    move-result v6

    if-eqz v6, :cond_63

    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "client.requestTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", cachedNtpElapsedRealtime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 21
    invoke-virtual {p0}, Landroid/net/SntpClient;->getNtpTimeReference()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 20
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_61} :catch_67

    .line 22
    const/4 v0, 0x1

    return v0

    .line 17
    .end local v5    # "addr":Ljava/net/InetAddress;
    :cond_63
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 27
    .end local v2    # "allByName":[Ljava/net/InetAddress;
    :cond_66
    goto :goto_7e

    .line 25
    :catch_67
    move-exception v2

    .line 26
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_7e
    return v1
.end method
