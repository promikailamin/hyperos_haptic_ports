.class public Lmiui/securitycenter/powercenter/BatterySipper;
.super Ljava/lang/Object;
.source "BatterySipper.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lmiui/securitycenter/powercenter/BatterySipper;",
        ">;"
    }
.end annotation


# static fields
.field static final blacklist AMBIENT_DISPLAY:I = 0xb

.field static final blacklist APP:I = 0x6

.field static final blacklist BLUETOOTH:I = 0x4

.field static final blacklist CAMERA:I = 0x9

.field static final blacklist CELL:I = 0x1

.field static final blacklist FLASHLIGHT:I = 0x7

.field static final blacklist IDLE:I = 0x0

.field static final blacklist OTHER:I = 0xa

.field static final blacklist PHONE:I = 0x2

.field static final blacklist SCREEN:I = 0x5

.field static final blacklist USER:I = 0x8

.field static final blacklist WIFI:I = 0x3


# instance fields
.field blacklist cpuFgTime:J

.field blacklist cpuTime:J

.field blacklist defaultPackageName:Ljava/lang/String;

.field blacklist drainType:I

.field blacklist gpsTime:J

.field blacklist mobileRxBytes:J

.field blacklist mobileTxBytes:J

.field blacklist name:Ljava/lang/String;

.field blacklist noCoveragePercent:D

.field blacklist uid:I

.field blacklist usageTime:J

.field blacklist value:D

.field blacklist wakeLockTime:J

.field blacklist wifiRunningTime:J

.field blacklist wifiRxBytes:J

.field blacklist wifiTxBytes:J


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;IID)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "drainType"    # I
    .param p3, "uid"    # I
    .param p4, "value"    # D

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->uid:I

    .line 40
    iput p2, p0, Lmiui/securitycenter/powercenter/BatterySipper;->drainType:I

    .line 41
    iput-wide p4, p0, Lmiui/securitycenter/powercenter/BatterySipper;->value:D

    .line 42
    iput p3, p0, Lmiui/securitycenter/powercenter/BatterySipper;->uid:I

    .line 43
    invoke-direct {p0, p1}, Lmiui/securitycenter/powercenter/BatterySipper;->getNameAndPackageName(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Ljava/lang/String;D)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "value"    # D

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->uid:I

    .line 47
    iput-object p2, p0, Lmiui/securitycenter/powercenter/BatterySipper;->defaultPackageName:Ljava/lang/String;

    .line 48
    const/16 v0, 0x3e8

    iput v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->uid:I

    .line 49
    const/4 v0, 0x6

    iput v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->drainType:I

    .line 50
    iput-wide p3, p0, Lmiui/securitycenter/powercenter/BatterySipper;->value:D

    .line 51
    invoke-direct {p0, p1, p2}, Lmiui/securitycenter/powercenter/BatterySipper;->getOfficialName(Landroid/content/Context;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method private blacklist getNameAndPackageName(Landroid/content/Context;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;

    .line 133
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 134
    .local v0, "pm":Landroid/content/pm/PackageManager;
    iget v1, p0, Lmiui/securitycenter/powercenter/BatterySipper;->uid:I

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "packages":[Ljava/lang/String;
    if-nez v1, :cond_d

    .line 136
    return-void

    .line 139
    :cond_d
    array-length v2, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2b

    .line 141
    :try_start_12
    aget-object v2, v1, v4

    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 142
    .local v2, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 143
    .local v3, "cs":Ljava/lang/CharSequence;
    if-eqz v3, :cond_24

    .line 144
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lmiui/securitycenter/powercenter/BatterySipper;->name:Ljava/lang/String;

    .line 146
    :cond_24
    aget-object v4, v1, v4

    iput-object v4, p0, Lmiui/securitycenter/powercenter/BatterySipper;->defaultPackageName:Ljava/lang/String;
    :try_end_28
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_28} :catch_29

    .end local v2    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "cs":Ljava/lang/CharSequence;
    goto :goto_2a

    .line 148
    :catch_29
    move-exception v2

    .line 149
    :goto_2a
    goto :goto_51

    .line 152
    :cond_2b
    array-length v2, v1

    move v3, v4

    :goto_2d
    if-ge v3, v2, :cond_51

    aget-object v5, v1, v3

    .line 154
    .local v5, "pkgName":Ljava/lang/String;
    :try_start_31
    invoke-virtual {v0, v5, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 155
    .local v6, "pi":Landroid/content/pm/PackageInfo;
    iget v7, v6, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    if-eqz v7, :cond_4c

    .line 156
    iget v7, v6, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    iget-object v8, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v5, v7, v8}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 158
    .local v7, "cs":Ljava/lang/CharSequence;
    if-eqz v7, :cond_49

    .line 159
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lmiui/securitycenter/powercenter/BatterySipper;->name:Ljava/lang/String;

    .line 161
    :cond_49
    iput-object v5, p0, Lmiui/securitycenter/powercenter/BatterySipper;->defaultPackageName:Ljava/lang/String;
    :try_end_4b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_31 .. :try_end_4b} :catch_4d

    .line 162
    goto :goto_51

    .line 166
    .end local v6    # "pi":Landroid/content/pm/PackageInfo;
    .end local v7    # "cs":Ljava/lang/CharSequence;
    :cond_4c
    goto :goto_4e

    .line 165
    :catch_4d
    move-exception v6

    .line 152
    .end local v5    # "pkgName":Ljava/lang/String;
    :goto_4e
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .line 169
    :cond_51
    :goto_51
    return-void
.end method

.method private blacklist getOfficialName(Landroid/content/Context;Ljava/lang/String;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 175
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 176
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 178
    .local v1, "find":Z
    const/4 v2, 0x0

    :try_start_6
    invoke-virtual {v0, p2, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 179
    .local v3, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 180
    .local v4, "cs":Ljava/lang/CharSequence;
    if-eqz v4, :cond_17

    .line 181
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lmiui/securitycenter/powercenter/BatterySipper;->name:Ljava/lang/String;
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_16} :catch_18

    .line 182
    const/4 v1, 0x1

    .line 185
    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "cs":Ljava/lang/CharSequence;
    :cond_17
    goto :goto_19

    .line 184
    :catch_18
    move-exception v3

    .line 186
    :goto_19
    if-nez v1, :cond_36

    .line 188
    :try_start_1b
    invoke-virtual {v0, p2, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 189
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    iget v3, v2, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    if-eqz v3, :cond_34

    .line 190
    iget v3, v2, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, p2, v3, v4}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 192
    .local v3, "cs":Ljava/lang/CharSequence;
    if-eqz v3, :cond_34

    .line 193
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lmiui/securitycenter/powercenter/BatterySipper;->name:Ljava/lang/String;
    :try_end_33
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1b .. :try_end_33} :catch_35

    .line 194
    const/4 v1, 0x1

    .line 198
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    .end local v3    # "cs":Ljava/lang/CharSequence;
    :cond_34
    goto :goto_36

    .line 197
    :catch_35
    move-exception v2

    .line 200
    :cond_36
    :goto_36
    if-nez v1, :cond_3c

    .line 201
    iget-object v2, p0, Lmiui/securitycenter/powercenter/BatterySipper;->defaultPackageName:Ljava/lang/String;

    iput-object v2, p0, Lmiui/securitycenter/powercenter/BatterySipper;->name:Ljava/lang/String;

    .line 203
    :cond_3c
    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 8
    check-cast p1, Lmiui/securitycenter/powercenter/BatterySipper;

    invoke-virtual {p0, p1}, Lmiui/securitycenter/powercenter/BatterySipper;->compareTo(Lmiui/securitycenter/powercenter/BatterySipper;)I

    move-result p1

    return p1
.end method

.method public whitelist compareTo(Lmiui/securitycenter/powercenter/BatterySipper;)I
    .registers 6
    .param p1, "other"    # Lmiui/securitycenter/powercenter/BatterySipper;

    .line 61
    invoke-virtual {p1}, Lmiui/securitycenter/powercenter/BatterySipper;->getSortValue()D

    move-result-wide v0

    invoke-virtual {p0}, Lmiui/securitycenter/powercenter/BatterySipper;->getSortValue()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0
.end method

.method public whitelist getDrainType()I
    .registers 2

    .line 117
    iget v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->drainType:I

    return v0
.end method

.method public whitelist getObjectValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 65
    const-string v0, "name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 66
    iget-object v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->name:Ljava/lang/String;

    return-object v0

    .line 68
    :cond_b
    const-string v0, "uid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 69
    iget v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 71
    :cond_1a
    const-string v0, "value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 72
    iget-wide v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 74
    :cond_29
    const-string v0, "drainType"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 75
    iget v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->drainType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 77
    :cond_38
    const-string v0, "usageTime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 78
    iget-wide v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->usageTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 80
    :cond_47
    const-string v0, "cpuTime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 81
    iget-wide v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->cpuTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 83
    :cond_56
    const-string v0, "gpsTime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 84
    iget-wide v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->gpsTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 86
    :cond_65
    const-string v0, "wifiRunningTime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 87
    iget-wide v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->wifiRunningTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 89
    :cond_74
    const-string v0, "cpuFgTime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 90
    iget-wide v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->cpuFgTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 92
    :cond_83
    const-string v0, "wakeLockTime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_92

    .line 93
    iget-wide v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->wakeLockTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 95
    :cond_92
    const-string v0, "mobileRxBytes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 96
    iget-wide v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->mobileRxBytes:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 98
    :cond_a1
    const-string v0, "mobileTxBytes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 99
    iget-wide v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->mobileTxBytes:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 101
    :cond_b0
    const-string v0, "noCoveragePercent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 102
    iget-wide v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->noCoveragePercent:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 104
    :cond_bf
    const-string v0, "defaultPackageName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ca

    .line 105
    iget-object v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->defaultPackageName:Ljava/lang/String;

    return-object v0

    .line 107
    :cond_ca
    const-string v0, "wifiRxBytes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d9

    .line 108
    iget-wide v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->wifiRxBytes:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 110
    :cond_d9
    const-string v0, "wifiTxBytes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e8

    .line 111
    iget-wide v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->wifiTxBytes:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 113
    :cond_e8
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 2

    .line 129
    iget-object v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->defaultPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSortValue()D
    .registers 3

    .line 55
    iget-wide v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->value:D

    return-wide v0
.end method

.method public whitelist getUid()I
    .registers 2

    .line 121
    iget v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->uid:I

    return v0
.end method

.method public whitelist getValue()D
    .registers 3

    .line 125
    iget-wide v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->value:D

    return-wide v0
.end method
