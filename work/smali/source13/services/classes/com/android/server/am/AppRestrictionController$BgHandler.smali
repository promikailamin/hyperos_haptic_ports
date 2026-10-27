.class Lcom/android/server/am/AppRestrictionController$BgHandler;
.super Landroid/os/Handler;
.source "AppRestrictionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppRestrictionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BgHandler"
.end annotation


# static fields
.field static final MSG_APP_RESTRICTION_LEVEL_CHANGED:I = 0x1

.field static final MSG_APP_STANDBY_BUCKET_CHANGED:I = 0x2

.field static final MSG_BACKGROUND_RESTRICTION_CHANGED:I = 0x0

.field static final MSG_CANCEL_REQUEST_BG_RESTRICTED:I = 0x9

.field static final MSG_LOAD_RESTRICTION_SETTINGS:I = 0xa

.field static final MSG_PERSIST_RESTRICTION_SETTINGS:I = 0xb

.field static final MSG_REQUEST_BG_RESTRICTED:I = 0x4

.field static final MSG_UID_ACTIVE:I = 0x6

.field static final MSG_UID_GONE:I = 0x7

.field static final MSG_UID_IDLE:I = 0x5

.field static final MSG_UID_PROC_STATE_CHANGED:I = 0x8

.field static final MSG_USER_INTERACTION_STARTED:I = 0x3


# instance fields
.field private final mInjector:Lcom/android/server/am/AppRestrictionController$Injector;


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/android/server/am/AppRestrictionController$Injector;)V
    .registers 3
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "injector"    # Lcom/android/server/am/AppRestrictionController$Injector;

    .line 3022
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3023
    iput-object p2, p0, Lcom/android/server/am/AppRestrictionController$BgHandler;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    .line 3024
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 3028
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$BgHandler;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    .line 3029
    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->getAppRestrictionController()Lcom/android/server/am/AppRestrictionController;

    move-result-object v0

    .line 3030
    .local v0, "c":Lcom/android/server/am/AppRestrictionController;
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_90

    goto/16 :goto_8e

    .line 3067
    :pswitch_f
    iget-object v1, v0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->persistToXml(I)V

    goto/16 :goto_8e

    .line 3064
    :pswitch_18
    iget-object v1, v0, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    invoke-virtual {v1, v3}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->loadFromXml(Z)V

    .line 3065
    goto/16 :goto_8e

    .line 3053
    :pswitch_1f
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/AppRestrictionController;->handleCancelRequestBgRestricted(Ljava/lang/String;I)V

    .line 3054
    goto/16 :goto_8e

    .line 3056
    :pswitch_2a
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/AppRestrictionController;->handleUidProcStateChanged(II)V

    .line 3057
    goto :goto_8e

    .line 3060
    :pswitch_32
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    if-ne v4, v3, :cond_39

    move v2, v3

    :cond_39
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/AppRestrictionController;->handleUidInactive(IZ)V

    .line 3061
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppRestrictionController;->handleUidGone(I)V

    .line 3062
    goto :goto_8e

    .line 3050
    :pswitch_42
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppRestrictionController;->handleUidActive(I)V

    .line 3051
    goto :goto_8e

    .line 3047
    :pswitch_48
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    if-ne v4, v3, :cond_4f

    move v2, v3

    :cond_4f
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/AppRestrictionController;->handleUidInactive(IZ)V

    .line 3048
    goto :goto_8e

    .line 3044
    :pswitch_53
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/AppRestrictionController;->handleRequestBgRestricted(Ljava/lang/String;I)V

    .line 3045
    goto :goto_8e

    .line 3041
    :pswitch_5d
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v2}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$monUserInteractionStarted(Lcom/android/server/am/AppRestrictionController;Ljava/lang/String;I)V

    .line 3042
    goto :goto_8e

    .line 3038
    :pswitch_67
    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$mhandleAppStandbyBucketChanged(Lcom/android/server/am/AppRestrictionController;ILjava/lang/String;I)V

    .line 3039
    goto :goto_8e

    .line 3035
    :pswitch_73
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$mdispatchAppRestrictionLevelChanges(Lcom/android/server/am/AppRestrictionController;ILjava/lang/String;I)V

    .line 3036
    goto :goto_8e

    .line 3032
    :pswitch_7f
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget v5, p1, Landroid/os/Message;->arg2:I

    if-ne v5, v3, :cond_8a

    move v2, v3

    :cond_8a
    invoke-static {v0, v1, v4, v2}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$mhandleBackgroundRestrictionChanged(Lcom/android/server/am/AppRestrictionController;ILjava/lang/String;Z)V

    .line 3033
    nop

    .line 3070
    :goto_8e
    return-void

    nop

    :pswitch_data_90
    .packed-switch 0x0
        :pswitch_7f
        :pswitch_73
        :pswitch_67
        :pswitch_5d
        :pswitch_53
        :pswitch_48
        :pswitch_42
        :pswitch_32
        :pswitch_2a
        :pswitch_1f
        :pswitch_18
        :pswitch_f
    .end packed-switch
.end method
