.class public final enum Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;
.super Ljava/lang/Enum;
.source "NetworkDiagnostics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/securitycenter/net/NetworkDiagnostics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DnsResponseCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;

.field public static final enum blacklist FORMERR:Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;

.field public static final enum blacklist NOERROR:Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;

.field public static final enum blacklist NOTIMP:Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;

.field public static final enum blacklist NXDOMAIN:Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;

.field public static final enum blacklist REFUSED:Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;

.field public static final enum blacklist SERVFAIL:Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 13

    .line 104
    new-instance v0, Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;

    const-string v1, "NOERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;->NOERROR:Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;

    new-instance v1, Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;

    const-string v3, "FORMERR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;->FORMERR:Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;

    new-instance v3, Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;

    const-string v5, "SERVFAIL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;->SERVFAIL:Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;

    new-instance v5, Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;

    const-string v7, "NXDOMAIN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;->NXDOMAIN:Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;

    new-instance v7, Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;

    const-string v9, "NOTIMP"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;->NOTIMP:Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;

    new-instance v9, Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;

    const-string v11, "REFUSED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;->REFUSED:Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;

    const/4 v11, 0x6

    new-array v11, v11, [Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;->$VALUES:[Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 104
    const-class v0, Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;

    return-object v0
.end method

.method public static blacklist values()[Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;
    .registers 1

    .line 104
    sget-object v0, Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;->$VALUES:[Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;

    invoke-virtual {v0}, [Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;

    return-object v0
.end method
