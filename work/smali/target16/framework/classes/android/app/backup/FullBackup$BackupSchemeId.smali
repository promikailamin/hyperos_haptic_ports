.class Landroid/app/backup/FullBackup$BackupSchemeId;
.super Ljava/lang/Object;
.source "FullBackup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/FullBackup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BackupSchemeId"
.end annotation


# instance fields
.field final blacklist mBackupDestination:I

.field final blacklist mPackageName:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p1, p0, Landroid/app/backup/FullBackup$BackupSchemeId;->mPackageName:Ljava/lang/String;

    .line 142
    iput p2, p0, Landroid/app/backup/FullBackup$BackupSchemeId;->mBackupDestination:I

    .line 143
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 152
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 153
    return v0

    .line 155
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_33

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_33

    .line 158
    :cond_12
    check-cast p1, Landroid/app/backup/FullBackup$BackupSchemeId;

    .line 159
    iget-object v2, p0, Landroid/app/backup/FullBackup$BackupSchemeId;->mPackageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/app/backup/FullBackup$BackupSchemeId;->mPackageName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    iget v2, p0, Landroid/app/backup/FullBackup$BackupSchemeId;->mBackupDestination:I

    .line 160
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p1, Landroid/app/backup/FullBackup$BackupSchemeId;->mBackupDestination:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_31

    goto :goto_32

    :cond_31
    move v0, v1

    .line 159
    :goto_32
    return v0

    .line 156
    :cond_33
    :goto_33
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 147
    iget-object v0, p0, Landroid/app/backup/FullBackup$BackupSchemeId;->mPackageName:Ljava/lang/String;

    iget v1, p0, Landroid/app/backup/FullBackup$BackupSchemeId;->mBackupDestination:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
