.class public interface abstract Lcom/android/server/backup/SystemBackupAgentStub;
.super Ljava/lang/Object;
.source "SystemBackupAgentStub.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SystemBackupAgentStub"


# direct methods
.method public static getInstance()Lcom/android/server/backup/SystemBackupAgentStub;
    .registers 1

    .line 14
    const-class v0, Lcom/android/server/backup/SystemBackupAgentStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/SystemBackupAgentStub;

    return-object v0
.end method


# virtual methods
.method public abstract createBackupHelper(Landroid/content/Context;)Landroid/app/backup/BackupHelper;
.end method

.method public abstract getHelperName()Ljava/lang/String;
.end method

.method public init()V
    .registers 3

    .line 20
    const-string v0, "SystemBackupAgentStub"

    const-string v1, "Start Init SystemBackupAgentStub"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    return-void
.end method
