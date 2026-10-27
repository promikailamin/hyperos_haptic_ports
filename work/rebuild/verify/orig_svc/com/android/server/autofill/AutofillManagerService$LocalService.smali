.class public final Lcom/android/server/autofill/AutofillManagerService$LocalService;
.super Landroid/view/autofill/AutofillManagerInternal;
.source "AutofillManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/autofill/AutofillManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/AutofillManagerService;)V
    .registers 2

    .line 1118
    iput-object p1, p0, Lcom/android/server/autofill/AutofillManagerService$LocalService;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-direct {p0}, Landroid/view/autofill/AutofillManagerInternal;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/server/autofill/AutofillManagerService-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/autofill/AutofillManagerService$LocalService;-><init>(Lcom/android/server/autofill/AutofillManagerService;)V

    return-void
.end method


# virtual methods
.method public getAutofillOptions(Ljava/lang/String;JI)Landroid/content/AutofillOptions;
    .registers 7

    .line 1135
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$LocalService;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    iget-boolean v1, v0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v1, :cond_8

    const/4 v1, 0x6

    goto :goto_f

    .line 1138
    :cond_8
    iget-boolean v1, v0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz v1, :cond_e

    const/4 v1, 0x2

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    .line 1143
    :goto_f
    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$fgetmAutofillCompatState(Lcom/android/server/autofill/AutofillManagerService;)Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->isCompatibilityModeRequested(Ljava/lang/String;JI)Z

    move-result p2

    .line 1145
    new-instance p3, Landroid/content/AutofillOptions;

    invoke-direct {p3, v1, p2}, Landroid/content/AutofillOptions;-><init>(IZ)V

    .line 1146
    iget-object p2, p0, Lcom/android/server/autofill/AutofillManagerService$LocalService;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    iget-object p2, p2, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillState:Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;

    invoke-virtual {p2, p3, p4, p1}, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->injectAugmentedAutofillInfo(Landroid/content/AutofillOptions;ILjava/lang/String;)V

    .line 1147
    invoke-virtual {p0, p3, p4, p1}, Lcom/android/server/autofill/AutofillManagerService$LocalService;->injectDisableAppInfo(Landroid/content/AutofillOptions;ILjava/lang/String;)V

    return-object p3
.end method

.method public final injectDisableAppInfo(Landroid/content/AutofillOptions;ILjava/lang/String;)V
    .registers 6

    .line 1164
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$LocalService;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$fgetmDisabledInfoCache(Lcom/android/server/autofill/AutofillManagerService;)Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;

    move-result-object v0

    .line 1165
    invoke-virtual {v0, p2, p3}, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->getAppDisabledExpiration(ILjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p1, Landroid/content/AutofillOptions;->appDisabledExpiration:J

    .line 1166
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$LocalService;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {p0}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$fgetmDisabledInfoCache(Lcom/android/server/autofill/AutofillManagerService;)Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;

    move-result-object p0

    .line 1167
    invoke-virtual {p0, p2, p3}, Lcom/android/server/autofill/AutofillManagerService$DisabledInfoCache;->getAppDisabledActivities(ILjava/lang/String;)Landroid/util/ArrayMap;

    move-result-object p0

    iput-object p0, p1, Landroid/content/AutofillOptions;->disabledActivities:Landroid/util/ArrayMap;

    return-void
.end method

.method public isAugmentedAutofillServiceForUser(II)Z
    .registers 4

    .line 1153
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$LocalService;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$300(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1154
    :try_start_7
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$LocalService;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # invokes: Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {p0, p2}, Lcom/android/server/autofill/AutofillManagerService;->access$400(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    if-eqz p0, :cond_19

    .line 1156
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isAugmentedAutofillServiceForUserLocked(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_17
    move-exception p0

    goto :goto_1c

    .line 1158
    :cond_19
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_17

    throw p0
.end method

.method public onBackKeyPressed()V
    .registers 3

    .line 1121
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_c

    const-string v0, "AutofillManagerService"

    const-string/jumbo v1, "onBackKeyPressed()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    :cond_c
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$LocalService;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$fgetmUi(Lcom/android/server/autofill/AutofillManagerService;)Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/ui/AutoFillUI;->hideAll(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 1123
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$LocalService;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$200(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1124
    :try_start_1d
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$LocalService;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 1126
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 1125
    invoke-static {p0, v1}, Lcom/android/server/autofill/AutofillManagerService;->-$$Nest$mgetServiceForUserWithLocalBinderIdentityLocked(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object p0

    .line 1127
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->onBackKeyPressed()V

    .line 1128
    monitor-exit v0

    return-void

    :catchall_2c
    move-exception p0

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_1d .. :try_end_2e} :catchall_2c

    throw p0
.end method
