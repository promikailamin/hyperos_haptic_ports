.class public Lcom/android/server/backup/AppGrammaticalGenderBackupHelper;
.super Landroid/app/backup/BlobBackupHelper;
.source "AppGrammaticalGenderBackupHelper.java"


# instance fields
.field public final mGrammarInflectionManagerInternal:Lcom/android/server/grammaticalinflection/GrammaticalInflectionManagerInternal;

.field public final mUserId:I


# direct methods
.method public constructor <init>(I)V
    .registers 4

    .line 37
    const-string v0, "app_gender"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/app/backup/BlobBackupHelper;-><init>(I[Ljava/lang/String;)V

    .line 38
    iput p1, p0, Lcom/android/server/backup/AppGrammaticalGenderBackupHelper;->mUserId:I

    .line 39
    const-class p1, Lcom/android/server/grammaticalinflection/GrammaticalInflectionManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/grammaticalinflection/GrammaticalInflectionManagerInternal;

    iput-object p1, p0, Lcom/android/server/backup/AppGrammaticalGenderBackupHelper;->mGrammarInflectionManagerInternal:Lcom/android/server/grammaticalinflection/GrammaticalInflectionManagerInternal;

    return-void
.end method


# virtual methods
.method public applyRestoredPayload(Ljava/lang/String;[B)V
    .registers 4

    .line 62
    const-string v0, "app_gender"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/android/server/backup/AppGrammaticalGenderBackupHelper;->mGrammarInflectionManagerInternal:Lcom/android/server/grammaticalinflection/GrammaticalInflectionManagerInternal;

    if-eqz p1, :cond_11

    .line 63
    iget p0, p0, Lcom/android/server/backup/AppGrammaticalGenderBackupHelper;->mUserId:I

    invoke-virtual {p1, p2, p0}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionManagerInternal;->stageAndApplyRestoredPayload([BI)V

    :cond_11
    return-void
.end method

.method public getBackupPayload(Ljava/lang/String;)[B
    .registers 3

    .line 56
    const-string v0, "app_gender"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/android/server/backup/AppGrammaticalGenderBackupHelper;->mGrammarInflectionManagerInternal:Lcom/android/server/grammaticalinflection/GrammaticalInflectionManagerInternal;

    if-eqz p1, :cond_13

    .line 57
    iget p0, p0, Lcom/android/server/backup/AppGrammaticalGenderBackupHelper;->mUserId:I

    invoke-virtual {p1, p0}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionManagerInternal;->getBackupPayload(I)[B

    move-result-object p0

    return-object p0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public performBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .registers 5

    .line 47
    invoke-virtual {p2}, Landroid/app/backup/BackupDataOutput;->getTransportFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_9

    return-void

    .line 51
    :cond_9
    invoke-super {p0, p1, p2, p3}, Landroid/app/backup/BlobBackupHelper;->performBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method
