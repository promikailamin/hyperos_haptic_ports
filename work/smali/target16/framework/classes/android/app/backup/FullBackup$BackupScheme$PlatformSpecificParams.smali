.class public Landroid/app/backup/FullBackup$BackupScheme$PlatformSpecificParams;
.super Ljava/lang/Object;
.source "FullBackup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/FullBackup$BackupScheme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlatformSpecificParams"
.end annotation


# instance fields
.field private final blacklist mBundleId:Ljava/lang/String;

.field private final blacklist mContentVersion:Ljava/lang/String;

.field private final blacklist mTeamId:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 437
    iput-object p1, p0, Landroid/app/backup/FullBackup$BackupScheme$PlatformSpecificParams;->mBundleId:Ljava/lang/String;

    .line 438
    iput-object p2, p0, Landroid/app/backup/FullBackup$BackupScheme$PlatformSpecificParams;->mTeamId:Ljava/lang/String;

    .line 439
    iput-object p3, p0, Landroid/app/backup/FullBackup$BackupScheme$PlatformSpecificParams;->mContentVersion:Ljava/lang/String;

    .line 440
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 456
    instance-of v0, p1, Landroid/app/backup/FullBackup$BackupScheme$PlatformSpecificParams;

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    .line 457
    check-cast p1, Landroid/app/backup/FullBackup$BackupScheme$PlatformSpecificParams;

    .line 458
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme$PlatformSpecificParams;->mBundleId:Ljava/lang/String;

    iget-object v2, p1, Landroid/app/backup/FullBackup$BackupScheme$PlatformSpecificParams;->mBundleId:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme$PlatformSpecificParams;->mTeamId:Ljava/lang/String;

    iget-object v2, p1, Landroid/app/backup/FullBackup$BackupScheme$PlatformSpecificParams;->mTeamId:Ljava/lang/String;

    .line 459
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme$PlatformSpecificParams;->mContentVersion:Ljava/lang/String;

    iget-object p1, p1, Landroid/app/backup/FullBackup$BackupScheme$PlatformSpecificParams;->mContentVersion:Ljava/lang/String;

    .line 460
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_27

    const/4 v1, 0x1

    goto :goto_28

    :cond_27
    nop

    .line 458
    :goto_28
    return v1

    .line 462
    :cond_29
    return v1
.end method

.method public blacklist getBundleId()Ljava/lang/String;
    .registers 2

    .line 443
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme$PlatformSpecificParams;->mBundleId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getContentVersion()Ljava/lang/String;
    .registers 2

    .line 451
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme$PlatformSpecificParams;->mContentVersion:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTeamId()Ljava/lang/String;
    .registers 2

    .line 447
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme$PlatformSpecificParams;->mTeamId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 467
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupScheme$PlatformSpecificParams;->mBundleId:Ljava/lang/String;

    iget-object v1, p0, Landroid/app/backup/FullBackup$BackupScheme$PlatformSpecificParams;->mTeamId:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/backup/FullBackup$BackupScheme$PlatformSpecificParams;->mContentVersion:Ljava/lang/String;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
