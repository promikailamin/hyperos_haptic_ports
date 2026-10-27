.class final Lcom/android/server/locales/LocaleManagerService$LocaleManagerInternalImpl;
.super Lcom/android/server/locales/LocaleManagerInternal;
.source "LocaleManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locales/LocaleManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocaleManagerInternalImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/locales/LocaleManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/locales/LocaleManagerService;)V
    .registers 2

    .line 124
    iput-object p1, p0, Lcom/android/server/locales/LocaleManagerService$LocaleManagerInternalImpl;->this$0:Lcom/android/server/locales/LocaleManagerService;

    invoke-direct {p0}, Lcom/android/server/locales/LocaleManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/locales/LocaleManagerService;Lcom/android/server/locales/LocaleManagerService$LocaleManagerInternalImpl-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/locales/LocaleManagerService$LocaleManagerInternalImpl;-><init>(Lcom/android/server/locales/LocaleManagerService;)V

    return-void
.end method

.method private checkCallerIsSystem()V
    .registers 3

    .line 138
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_9

    .line 141
    return-void

    .line 139
    :cond_9
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller is not system."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getBackupPayload(I)[B
    .registers 3
    .param p1, "userId"    # I

    .line 128
    invoke-direct {p0}, Lcom/android/server/locales/LocaleManagerService$LocaleManagerInternalImpl;->checkCallerIsSystem()V

    .line 129
    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerService$LocaleManagerInternalImpl;->this$0:Lcom/android/server/locales/LocaleManagerService;

    invoke-static {v0}, Lcom/android/server/locales/LocaleManagerService;->-$$Nest$fgetmBackupHelper(Lcom/android/server/locales/LocaleManagerService;)Lcom/android/server/locales/LocaleManagerBackupHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/locales/LocaleManagerBackupHelper;->getBackupPayload(I)[B

    move-result-object v0

    return-object v0
.end method

.method public stageAndApplyRestoredPayload([BI)V
    .registers 4
    .param p1, "payload"    # [B
    .param p2, "userId"    # I

    .line 134
    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerService$LocaleManagerInternalImpl;->this$0:Lcom/android/server/locales/LocaleManagerService;

    invoke-static {v0}, Lcom/android/server/locales/LocaleManagerService;->-$$Nest$fgetmBackupHelper(Lcom/android/server/locales/LocaleManagerService;)Lcom/android/server/locales/LocaleManagerBackupHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/locales/LocaleManagerBackupHelper;->stageAndApplyRestoredPayload([BI)V

    .line 135
    return-void
.end method
