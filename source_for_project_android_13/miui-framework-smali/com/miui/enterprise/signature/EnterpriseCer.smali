.class public Lcom/miui/enterprise/signature/EnterpriseCer;
.super Ljava/lang/Object;
.source "EnterpriseCer.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist ACTION_ENTERPRISE_CERT_UPDATE:Ljava/lang/String; = "com.miui.enterprise.ACTION_CERT_UPDATE"

.field public static final whitelist CERT_FILE:Ljava/lang/String; = "/data/system/entcert"

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/miui/enterprise/signature/EnterpriseCer;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist EXTRA_CERT:Ljava/lang/String; = "extra_ent_cert"

.field public static final whitelist PERMISSION_ACTIVATE_ENTERPRISE_MODE:Ljava/lang/String; = "com.miui.enterprise.permission.ACTIVE_ENTERPRISE_MODE"

.field static final blacklist sDateformat:Ljava/text/DateFormat;


# instance fields
.field public whitelist agencyCode:Ljava/lang/String;

.field public whitelist apkHash:Ljava/lang/String;

.field public whitelist apkNewHash:Ljava/lang/String;

.field public whitelist deviceIds:[Ljava/lang/String;

.field public whitelist licenceCode:Ljava/lang/String;

.field public whitelist permissions:[Ljava/lang/String;

.field blacklist signature:Ljava/lang/String;

.field public whitelist validFrom:J

.field public whitelist validTo:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 22
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/enterprise/signature/EnterpriseCer;->sDateformat:Ljava/text/DateFormat;

    .line 164
    new-instance v0, Lcom/miui/enterprise/signature/EnterpriseCer$1;

    invoke-direct {v0}, Lcom/miui/enterprise/signature/EnterpriseCer$1;-><init>()V

    sput-object v0, Lcom/miui/enterprise/signature/EnterpriseCer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->agencyCode:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->licenceCode:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->apkHash:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->apkNewHash:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->signature:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->agencyCode:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->licenceCode:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->apkHash:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->apkNewHash:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->signature:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->agencyCode:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->licenceCode:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->permissions:[Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->deviceIds:[Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->validFrom:J

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->validTo:J

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->apkHash:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->apkNewHash:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->signature:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public constructor whitelist <init>(Ljava/io/InputStream;)V
    .registers 10
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->agencyCode:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->licenceCode:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->apkHash:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->apkNewHash:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->signature:Ljava/lang/String;

    .line 71
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 73
    .local v1, "reader":Ljava/io/BufferedReader;
    :cond_19
    :goto_19
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "line":Ljava/lang/String;
    if-eqz v2, :cond_f6

    .line 74
    const-string v2, "AgencyCode"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 75
    const-string v2, "AgencyCode:"

    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->agencyCode:Ljava/lang/String;

    .line 77
    :cond_30
    const-string v2, "LicenceCode"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 78
    const-string v2, "LicenceCode:"

    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->licenceCode:Ljava/lang/String;

    .line 80
    :cond_40
    const-string v2, "Permissions"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v4, ","

    const/4 v5, 0x0

    const-string v6, "*"

    if-eqz v2, :cond_69

    .line 81
    const-string v2, "Permissions:"

    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, "permStr":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_67

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_60

    goto :goto_67

    .line 85
    :cond_60
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->permissions:[Ljava/lang/String;

    goto :goto_69

    .line 83
    :cond_67
    :goto_67
    iput-object v5, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->permissions:[Ljava/lang/String;

    .line 88
    .end local v2    # "permStr":Ljava/lang/String;
    :cond_69
    :goto_69
    const-string v2, "DeviceIds"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_86

    .line 89
    const-string v2, "DeviceIds:"

    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, "devicesIdStr":Ljava/lang/String;
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_80

    .line 91
    iput-object v5, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->deviceIds:[Ljava/lang/String;

    goto :goto_86

    .line 93
    :cond_80
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->deviceIds:[Ljava/lang/String;

    .line 96
    .end local v2    # "devicesIdStr":Ljava/lang/String;
    :cond_86
    :goto_86
    const-string v2, "ValidFrom"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a5

    .line 98
    :try_start_8e
    sget-object v2, Lcom/miui/enterprise/signature/EnterpriseCer;->sDateformat:Ljava/text/DateFormat;

    const-string v4, "ValidFrom:"

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->validFrom:J
    :try_end_a0
    .catch Ljava/text/ParseException; {:try_start_8e .. :try_end_a0} :catch_a1

    .line 101
    goto :goto_a5

    .line 99
    :catch_a1
    move-exception v2

    .line 100
    .local v2, "e":Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    .line 103
    .end local v2    # "e":Ljava/text/ParseException;
    :cond_a5
    :goto_a5
    const-string v2, "ValidTo"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c4

    .line 105
    :try_start_ad
    sget-object v2, Lcom/miui/enterprise/signature/EnterpriseCer;->sDateformat:Ljava/text/DateFormat;

    const-string v4, "ValidTo:"

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->validTo:J
    :try_end_bf
    .catch Ljava/text/ParseException; {:try_start_ad .. :try_end_bf} :catch_c0

    .line 108
    goto :goto_c4

    .line 106
    :catch_c0
    move-exception v2

    .line 107
    .restart local v2    # "e":Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    .line 110
    .end local v2    # "e":Ljava/text/ParseException;
    :cond_c4
    :goto_c4
    const-string v2, "ApkHash"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d4

    .line 111
    const-string v2, "ApkHash:"

    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->apkHash:Ljava/lang/String;

    .line 113
    :cond_d4
    const-string v2, "ApkNewHash"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e4

    .line 114
    const-string v2, "ApkNewHash:"

    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->apkNewHash:Ljava/lang/String;

    .line 116
    :cond_e4
    const-string v2, "Signature"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 117
    const-string v2, "Signature:"

    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->signature:Ljava/lang/String;

    goto/16 :goto_19

    .line 120
    :cond_f6
    return-void
.end method

.method private blacklist printArray([Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "array"    # [Ljava/lang/String;

    .line 35
    if-nez p1, :cond_5

    .line 36
    const-string v0, ""

    return-object v0

    .line 38
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .local v0, "sb":Ljava/lang/StringBuilder;
    array-length v1, p1

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_1c

    aget-object v3, p1, v2

    .line 40
    .local v3, "str":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .end local v3    # "str":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 42
    :cond_1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getUnSignedRaw()Ljava/lang/String;
    .registers 6

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AgencyCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->agencyCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\nLicenceCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->licenceCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\nPermissions:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->permissions:[Ljava/lang/String;

    const-string v2, "*"

    if-nez v1, :cond_2b

    move-object v1, v2

    goto :goto_2f

    :cond_2b
    invoke-direct {p0, v1}, Lcom/miui/enterprise/signature/EnterpriseCer;->printArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\nDeviceIds:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->deviceIds:[Ljava/lang/String;

    if-nez v1, :cond_3e

    goto :goto_42

    :cond_3e
    invoke-direct {p0, v1}, Lcom/miui/enterprise/signature/EnterpriseCer;->printArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\nValidFrom:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/miui/enterprise/signature/EnterpriseCer;->sDateformat:Ljava/text/DateFormat;

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->validFrom:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 127
    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\r\nValidTo:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->validTo:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 128
    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\nApkHash:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->apkHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\nApkNewHash:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->apkNewHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    return-object v0
.end method

.method public whitelist getValidFrom()Ljava/util/Date;
    .registers 4

    .line 47
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->validFrom:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public whitelist getValidTo()Ljava/util/Date;
    .registers 4

    .line 51
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->validTo:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AgencyCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->agencyCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\nLicenceCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->licenceCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\nPermissions:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->permissions:[Ljava/lang/String;

    const-string v2, "*"

    if-nez v1, :cond_2b

    move-object v1, v2

    goto :goto_2f

    :cond_2b
    invoke-direct {p0, v1}, Lcom/miui/enterprise/signature/EnterpriseCer;->printArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\nDeviceIds:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->deviceIds:[Ljava/lang/String;

    if-nez v1, :cond_3e

    goto :goto_42

    :cond_3e
    invoke-direct {p0, v1}, Lcom/miui/enterprise/signature/EnterpriseCer;->printArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\nValidFrom:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/miui/enterprise/signature/EnterpriseCer;->sDateformat:Ljava/text/DateFormat;

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->validFrom:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 139
    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\r\nValidTo:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->validTo:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 140
    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\nApkHash:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->apkHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\nApkNewHash:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->apkNewHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\nSignature:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->signature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 153
    iget-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->agencyCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->licenceCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->permissions:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->deviceIds:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 157
    iget-wide v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->validFrom:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 158
    iget-wide v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->validTo:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 159
    iget-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->apkHash:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->apkNewHash:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/miui/enterprise/signature/EnterpriseCer;->signature:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    return-void
.end method
