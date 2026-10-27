.class public Lcom/android/server/backup/crossplatform/CrossPlatformManifest;
.super Ljava/lang/Object;
.source "CrossPlatformManifest.java"


# instance fields
.field public final mPackageName:Ljava/lang/String;

.field public final mPlatform:Ljava/lang/String;

.field public final mPlatformSpecificParams:Ljava/util/List;

.field public final mSignatureHashes:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .registers 5

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/server/backup/crossplatform/CrossPlatformManifest;->mPackageName:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lcom/android/server/backup/crossplatform/CrossPlatformManifest;->mPlatform:Ljava/lang/String;

    .line 65
    iput-object p3, p0, Lcom/android/server/backup/crossplatform/CrossPlatformManifest;->mPlatformSpecificParams:Ljava/util/List;

    .line 66
    iput-object p4, p0, Lcom/android/server/backup/crossplatform/CrossPlatformManifest;->mSignatureHashes:Ljava/util/List;

    return-void
.end method

.method public static create(Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/util/List;)Lcom/android/server/backup/crossplatform/CrossPlatformManifest;
    .registers 5

    .line 51
    new-instance v0, Lcom/android/server/backup/crossplatform/CrossPlatformManifest;

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 55
    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/backup/BackupUtils;->hashSignatureArray([Landroid/content/pm/Signature;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-direct {v0, v1, p1, p2, p0}, Lcom/android/server/backup/crossplatform/CrossPlatformManifest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/backup/crossplatform/CrossPlatformManifest;
    .registers 1

    .line 128
    invoke-static {p0}, Lcom/android/server/backup/crossplatform/CrossPlatformManifestParser;->parse([B)Lcom/android/server/backup/crossplatform/CrossPlatformManifest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .registers 1

    .line 70
    iget-object p0, p0, Lcom/android/server/backup/crossplatform/CrossPlatformManifest;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getPlatformSpecificParams()Ljava/util/List;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/android/server/backup/crossplatform/CrossPlatformManifest;->mPlatformSpecificParams:Ljava/util/List;

    return-object p0
.end method

.method public toByteArray()[B
    .registers 6

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 105
    new-instance v1, Landroid/util/StringBuilderPrinter;

    invoke-direct {v1, v0}, Landroid/util/StringBuilderPrinter;-><init>(Ljava/lang/StringBuilder;)V

    const/4 v2, 0x1

    .line 107
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 108
    iget-object v2, p0, Lcom/android/server/backup/crossplatform/CrossPlatformManifest;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 109
    iget-object v2, p0, Lcom/android/server/backup/crossplatform/CrossPlatformManifest;->mPlatform:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 111
    iget-object v2, p0, Lcom/android/server/backup/crossplatform/CrossPlatformManifest;->mPlatformSpecificParams:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 112
    iget-object v2, p0, Lcom/android/server/backup/crossplatform/CrossPlatformManifest;->mPlatformSpecificParams:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_53

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/backup/FullBackup$BackupScheme$PlatformSpecificParams;

    .line 113
    invoke-virtual {v3}, Landroid/app/backup/FullBackup$BackupScheme$PlatformSpecificParams;->getBundleId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v3}, Landroid/app/backup/FullBackup$BackupScheme$PlatformSpecificParams;->getTeamId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v3}, Landroid/app/backup/FullBackup$BackupScheme$PlatformSpecificParams;->getContentVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    goto :goto_31

    .line 118
    :cond_53
    iget-object v2, p0, Lcom/android/server/backup/crossplatform/CrossPlatformManifest;->mSignatureHashes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 119
    iget-object p0, p0, Lcom/android/server/backup/crossplatform/CrossPlatformManifest;->mSignatureHashes:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_66
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 120
    invoke-static {}, Ljava/util/HexFormat;->of()Ljava/util/HexFormat;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HexFormat;->formatHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    goto :goto_66

    .line 123
    :cond_7e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0
.end method
