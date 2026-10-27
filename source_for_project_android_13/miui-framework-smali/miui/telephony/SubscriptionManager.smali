.class public abstract Lmiui/telephony/SubscriptionManager;
.super Ljava/lang/Object;
.source "SubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;,
        Lmiui/telephony/SubscriptionManager$ConstantsDefiner;,
        Lmiui/telephony/SubscriptionManager$Holder;
    }
.end annotation


# static fields
.field public static final whitelist DEFAULT_PHONE_ID:I

.field public static final whitelist DEFAULT_SLOT_ID:I

.field public static final whitelist DEFAULT_SUBSCRIPTION_ID:I

.field public static final whitelist INVALID_PHONE_ID:I

.field public static final whitelist INVALID_SLOT_ID:I

.field public static final whitelist INVALID_SUBSCRIPTION_ID:I

.field protected static final blacklist LOG_TAG:Ljava/lang/String; = "SubMgr"

.field public static final whitelist PHONE_KEY:Ljava/lang/String;

.field public static final whitelist SLOT_ID_1:I = 0x0

.field public static final whitelist SLOT_ID_2:I = 0x1

.field public static final whitelist SLOT_KEY:Ljava/lang/String;

.field public static final whitelist SUBSCRIPTION_KEY:Ljava/lang/String;


# instance fields
.field private blacklist mInsertedSubscriptionInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLock:Ljava/lang/Object;

.field private blacklist mSubscriptionsCacheEnabled:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$mensureSubscriptionInfoCache(Lmiui/telephony/SubscriptionManager;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/telephony/SubscriptionManager;->ensureSubscriptionInfoCache(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyOnSubscriptionsChangedListeners(Lmiui/telephony/SubscriptionManager;)V
    .registers 1

    invoke-direct {p0}, Lmiui/telephony/SubscriptionManager;->notifyOnSubscriptionsChangedListeners()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 100
    invoke-static {}, Lmiui/telephony/SubscriptionManager$ConstantsDefiner;->getInvalidSubscriptionIdConstant()I

    move-result v0

    sput v0, Lmiui/telephony/SubscriptionManager;->INVALID_SUBSCRIPTION_ID:I

    .line 103
    invoke-static {}, Lmiui/telephony/SubscriptionManager$ConstantsDefiner;->getInvalidPhoneIdConstant()I

    move-result v0

    sput v0, Lmiui/telephony/SubscriptionManager;->INVALID_PHONE_ID:I

    .line 106
    invoke-static {}, Lmiui/telephony/SubscriptionManager$ConstantsDefiner;->getInvalidSlotIdConstant()I

    move-result v0

    sput v0, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    .line 109
    invoke-static {}, Lmiui/telephony/SubscriptionManager$ConstantsDefiner;->getDefaultSubscriptionIdConstant()I

    move-result v0

    sput v0, Lmiui/telephony/SubscriptionManager;->DEFAULT_SUBSCRIPTION_ID:I

    .line 112
    invoke-static {}, Lmiui/telephony/SubscriptionManager$ConstantsDefiner;->getDefaultPhoneIdConstant()I

    move-result v0

    sput v0, Lmiui/telephony/SubscriptionManager;->DEFAULT_PHONE_ID:I

    .line 115
    invoke-static {}, Lmiui/telephony/SubscriptionManager$ConstantsDefiner;->getDefaultSlotIdConstant()I

    move-result v0

    sput v0, Lmiui/telephony/SubscriptionManager;->DEFAULT_SLOT_ID:I

    .line 118
    invoke-static {}, Lmiui/telephony/SubscriptionManager$ConstantsDefiner;->getSubscriptionKeyConstant()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/telephony/SubscriptionManager;->SUBSCRIPTION_KEY:Ljava/lang/String;

    .line 121
    invoke-static {}, Lmiui/telephony/SubscriptionManager$ConstantsDefiner;->getPhoneKeyConstant()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/telephony/SubscriptionManager;->PHONE_KEY:Ljava/lang/String;

    .line 124
    invoke-static {}, Lmiui/telephony/SubscriptionManager$ConstantsDefiner;->getSlotKeyConstant()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/telephony/SubscriptionManager;->SLOT_KEY:Ljava/lang/String;

    return-void
.end method

.method protected constructor blacklist <init>()V
    .registers 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/telephony/SubscriptionManager;->mListeners:Ljava/util/ArrayList;

    .line 157
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lmiui/telephony/SubscriptionManager;->mLock:Ljava/lang/Object;

    .line 158
    iput-object v0, p0, Lmiui/telephony/SubscriptionManager;->mInsertedSubscriptionInfos:Ljava/util/List;

    .line 159
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/telephony/SubscriptionManager;->mSubscriptionsCacheEnabled:Z

    .line 53
    return-void
.end method

.method private blacklist ensureSubscriptionInfoCache(Z)V
    .registers 5
    .param p1, "forceUpdate"    # Z

    .line 241
    const/4 v0, 0x0

    .line 242
    .local v0, "update":Z
    if-nez p1, :cond_7

    iget-object v1, p0, Lmiui/telephony/SubscriptionManager;->mInsertedSubscriptionInfos:Ljava/util/List;

    if-nez v1, :cond_17

    .line 243
    :cond_7
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoListInternal()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lmiui/telephony/SubscriptionManager;->mInsertedSubscriptionInfos:Ljava/util/List;

    .line 244
    if-nez v1, :cond_16

    .line 245
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmiui/telephony/SubscriptionManager;->mInsertedSubscriptionInfos:Ljava/util/List;

    .line 247
    :cond_16
    const/4 v0, 0x1

    .line 249
    :cond_17
    if-eqz v0, :cond_50

    sget-boolean v1, Lmiui/telephony/PhoneDebug;->VDBG:Z

    if-eqz v1, :cond_50

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ensureSubscriptionInfoCache "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_2d

    const-string v2, ""

    goto :goto_2f

    :cond_2d
    const-string v2, "false"

    :goto_2f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " insert="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/telephony/SubscriptionManager;->mInsertedSubscriptionInfos:Ljava/util/List;

    .line 251
    invoke-interface {v2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 250
    const-string v2, "SubMgr"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_50
    return-void
.end method

.method public static whitelist getDefault()Lmiui/telephony/SubscriptionManager;
    .registers 1

    .line 153
    sget-object v0, Lmiui/telephony/SubscriptionManager$Holder;->INSTANCE:Lmiui/telephony/SubscriptionManager;

    return-object v0
.end method

.method public static whitelist getPhoneId(Landroid/os/Bundle;I)I
    .registers 3
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "defaultValue"    # I

    .line 718
    sget-object v0, Lmiui/telephony/SubscriptionManager;->PHONE_KEY:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static whitelist getPhoneIdExtra(Landroid/content/Intent;I)I
    .registers 3
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "defaultValue"    # I

    .line 706
    sget-object v0, Lmiui/telephony/SubscriptionManager;->PHONE_KEY:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static whitelist getSlotId(Landroid/os/Bundle;I)I
    .registers 3
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "defaultValue"    # I

    .line 710
    sget-object v0, Lmiui/telephony/SubscriptionManager;->SLOT_KEY:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static whitelist getSlotIdExtra(Landroid/content/Intent;I)I
    .registers 3
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "defaultValue"    # I

    .line 698
    sget-object v0, Lmiui/telephony/SubscriptionManager;->SLOT_KEY:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static whitelist getSubscriptionId(Landroid/os/Bundle;I)I
    .registers 3
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "defaultValue"    # I

    .line 714
    sget-object v0, Lmiui/telephony/SubscriptionManager;->SUBSCRIPTION_KEY:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static whitelist getSubscriptionIdExtra(Landroid/content/Intent;I)I
    .registers 3
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "defaultValue"    # I

    .line 702
    sget-object v0, Lmiui/telephony/SubscriptionManager;->SUBSCRIPTION_KEY:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static whitelist isRealSlotId(I)Z
    .registers 2
    .param p0, "slotId"    # I

    .line 644
    if-ltz p0, :cond_e

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-ge p0, v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static whitelist isValidPhoneId(I)Z
    .registers 2
    .param p0, "phoneId"    # I

    .line 652
    if-ltz p0, :cond_c

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-lt p0, v0, :cond_10

    :cond_c
    sget v0, Lmiui/telephony/SubscriptionManager;->DEFAULT_PHONE_ID:I

    if-ne p0, v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public static whitelist isValidSlotId(I)Z
    .registers 2
    .param p0, "slotId"    # I

    .line 637
    if-ltz p0, :cond_c

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-lt p0, v0, :cond_10

    :cond_c
    sget v0, Lmiui/telephony/SubscriptionManager;->DEFAULT_SLOT_ID:I

    if-ne p0, v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public static whitelist isValidSubscriptionId(I)Z
    .registers 2
    .param p0, "subId"    # I

    .line 629
    sget v0, Lmiui/telephony/SubscriptionManager;->INVALID_SUBSCRIPTION_ID:I

    if-le p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private blacklist notifyOnSubscriptionsChangedListeners()V
    .registers 5

    .line 285
    iget-object v0, p0, Lmiui/telephony/SubscriptionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 286
    :try_start_3
    iget-object v1, p0, Lmiui/telephony/SubscriptionManager;->mListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_3f

    .line 287
    sget-boolean v1, Lmiui/telephony/PhoneDebug;->VDBG:Z

    if-eqz v1, :cond_29

    const-string v1, "SubMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notify OnSubscriptionsChangedListener size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmiui/telephony/SubscriptionManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_29
    iget-object v1, p0, Lmiui/telephony/SubscriptionManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 289
    .local v2, "l":Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
    invoke-interface {v2}, Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;->onSubscriptionsChanged()V

    .line 290
    .end local v2    # "l":Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
    goto :goto_2f

    .line 292
    :cond_3f
    monitor-exit v0

    .line 293
    return-void

    .line 292
    :catchall_41
    move-exception v1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_41

    throw v1
.end method

.method public static whitelist putPhoneId(Landroid/os/Bundle;I)V
    .registers 4
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "phoneId"    # I

    .line 682
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSlotIdForPhone(I)I

    move-result v0

    .line 683
    .local v0, "slotId":I
    nop

    .line 684
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v1

    .line 683
    invoke-static {p0, v0, p1, v1}, Lmiui/telephony/SubscriptionManager;->putSlotIdPhoneIdAndSubId(Landroid/os/Bundle;III)V

    .line 685
    return-void
.end method

.method public static whitelist putPhoneIdExtra(Landroid/content/Intent;I)V
    .registers 4
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "phoneId"    # I

    .line 661
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSlotIdForPhone(I)I

    move-result v0

    .line 662
    .local v0, "slotId":I
    nop

    .line 663
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v1

    .line 662
    invoke-static {p0, v0, p1, v1}, Lmiui/telephony/SubscriptionManager;->putSlotIdPhoneIdAndSubIdExtra(Landroid/content/Intent;III)V

    .line 664
    return-void
.end method

.method public static whitelist putSlotId(Landroid/os/Bundle;I)V
    .registers 4
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "slotId"    # I

    .line 677
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getPhoneIdForSlot(I)I

    move-result v0

    .line 678
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v1

    .line 677
    invoke-static {p0, p1, v0, v1}, Lmiui/telephony/SubscriptionManager;->putSlotIdPhoneIdAndSubId(Landroid/os/Bundle;III)V

    .line 679
    return-void
.end method

.method public static whitelist putSlotIdExtra(Landroid/content/Intent;I)V
    .registers 4
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "slotId"    # I

    .line 656
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getPhoneIdForSlot(I)I

    move-result v0

    .line 657
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v1

    .line 656
    invoke-static {p0, p1, v0, v1}, Lmiui/telephony/SubscriptionManager;->putSlotIdPhoneIdAndSubIdExtra(Landroid/content/Intent;III)V

    .line 658
    return-void
.end method

.method public static whitelist putSlotIdPhoneIdAndSubId(Landroid/os/Bundle;III)V
    .registers 5
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "slotId"    # I
    .param p2, "phoneId"    # I
    .param p3, "subId"    # I

    .line 692
    sget-object v0, Lmiui/telephony/SubscriptionManager;->SUBSCRIPTION_KEY:Ljava/lang/String;

    invoke-virtual {p0, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 693
    sget-object v0, Lmiui/telephony/SubscriptionManager;->PHONE_KEY:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 694
    sget-object v0, Lmiui/telephony/SubscriptionManager;->SLOT_KEY:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 695
    return-void
.end method

.method public static whitelist putSlotIdPhoneIdAndSubIdExtra(Landroid/content/Intent;III)V
    .registers 5
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "slotId"    # I
    .param p2, "phoneId"    # I
    .param p3, "subId"    # I

    .line 671
    sget-object v0, Lmiui/telephony/SubscriptionManager;->SUBSCRIPTION_KEY:Ljava/lang/String;

    invoke-virtual {p0, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 672
    sget-object v0, Lmiui/telephony/SubscriptionManager;->PHONE_KEY:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 673
    sget-object v0, Lmiui/telephony/SubscriptionManager;->SLOT_KEY:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 674
    return-void
.end method

.method public static whitelist putSubscriptionId(Landroid/os/Bundle;I)V
    .registers 4
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "subId"    # I

    .line 688
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSlotIdForSubscription(I)I

    move-result v0

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmiui/telephony/SubscriptionManager;->getPhoneIdForSubscription(I)I

    move-result v1

    invoke-static {p0, v0, v1, p1}, Lmiui/telephony/SubscriptionManager;->putSlotIdPhoneIdAndSubId(Landroid/os/Bundle;III)V

    .line 689
    return-void
.end method

.method public static whitelist putSubscriptionIdExtra(Landroid/content/Intent;I)V
    .registers 4
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "subId"    # I

    .line 667
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSlotIdForSubscription(I)I

    move-result v0

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmiui/telephony/SubscriptionManager;->getPhoneIdForSubscription(I)I

    move-result v1

    invoke-static {p0, v0, v1, p1}, Lmiui/telephony/SubscriptionManager;->putSlotIdPhoneIdAndSubIdExtra(Landroid/content/Intent;III)V

    .line 668
    return-void
.end method

.method public static whitelist toSimpleString(Ljava/util/List;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 722
    .local p0, "infos":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    const/4 v0, 0x0

    if-nez p0, :cond_5

    move v1, v0

    goto :goto_9

    :cond_5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 723
    .local v1, "size":I
    :goto_9
    if-lez v1, :cond_87

    .line 724
    new-array v2, v1, [Lmiui/telephony/SubscriptionInfo;

    .line 725
    .local v2, "subs":[Lmiui/telephony/SubscriptionInfo;
    invoke-interface {p0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 726
    new-instance v3, Ljava/lang/StringBuilder;

    mul-int/lit8 v4, v1, 0x40

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "[ size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 727
    .local v3, "sb":Ljava/lang/StringBuilder;
    array-length v4, v2

    :goto_22
    if-ge v0, v4, :cond_7d

    aget-object v5, v2, v0

    .line 728
    .local v5, "si":Lmiui/telephony/SubscriptionInfo;
    if-nez v5, :cond_30

    .line 729
    const-string v6, "SubMgr"

    const-string v7, "toSimpleString SubscriptionInfo size was changed"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    goto :goto_7a

    .line 732
    :cond_30
    const-string v6, " {id="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " iccid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 733
    sget-boolean v7, Lmiui/telephony/PhoneDebug;->VDBG:Z

    if-eqz v7, :cond_4d

    invoke-virtual {v5}, Lmiui/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v7

    goto :goto_55

    :cond_4d
    invoke-virtual {v5}, Lmiui/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lmiui/telephony/TelephonyUtils;->pii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_55
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 734
    const-string v7, " slot="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 735
    const-string v7, " active="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Lmiui/telephony/SubscriptionInfo;->isActivated()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x7d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 727
    .end local v5    # "si":Lmiui/telephony/SubscriptionInfo;
    :goto_7a
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 737
    :cond_7d
    const/16 v0, 0x5d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 738
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 740
    .end local v2    # "subs":[Lmiui/telephony/SubscriptionInfo;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_87
    const-string v0, "[]"

    return-object v0
.end method


# virtual methods
.method public whitelist addOnSubscriptionsChangedListener(Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V
    .registers 5
    .param p1, "listener"    # Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 172
    sget-boolean v0, Lmiui/telephony/PhoneDebug;->VDBG:Z

    if-eqz v0, :cond_24

    .line 173
    const-string v0, "SubMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addOnSubscriptionsChangedListener listener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_24
    iget-object v0, p0, Lmiui/telephony/SubscriptionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 177
    :try_start_27
    iget-object v1, p0, Lmiui/telephony/SubscriptionManager;->mListeners:Ljava/util/ArrayList;

    if-nez v1, :cond_32

    .line 178
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmiui/telephony/SubscriptionManager;->mListeners:Ljava/util/ArrayList;

    .line 180
    :cond_32
    iget-object v1, p0, Lmiui/telephony/SubscriptionManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 181
    iget-object v1, p0, Lmiui/telephony/SubscriptionManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->addOnSubscriptionsChangedListenerInternal()V

    .line 184
    :cond_42
    monitor-exit v0

    .line 185
    return-void

    .line 184
    :catchall_44
    move-exception v1

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_27 .. :try_end_46} :catchall_44

    throw v1
.end method

.method protected abstract whitelist addOnSubscriptionsChangedListenerInternal()V
.end method

.method public whitelist disableSubscriptionsCache()V
    .registers 3

    .line 230
    iget-object v0, p0, Lmiui/telephony/SubscriptionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 231
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lmiui/telephony/SubscriptionManager;->mSubscriptionsCacheEnabled:Z

    .line 232
    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/telephony/SubscriptionManager;->mInsertedSubscriptionInfos:Ljava/util/List;

    .line 234
    iget-object v1, p0, Lmiui/telephony/SubscriptionManager;->mListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_16

    .line 235
    :cond_13
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListenerInternal()V

    .line 237
    :cond_16
    monitor-exit v0

    .line 238
    return-void

    .line 237
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 744
    const-string v0, "SubscriptionManager:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 746
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "mListeners="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 747
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lmiui/telephony/SubscriptionManager;->mListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_45

    .line 748
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 749
    .local v2, "l":Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
    const/16 v3, 0x7b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x7d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 750
    nop

    .end local v2    # "l":Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
    goto :goto_20

    .line 752
    :cond_45
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 753
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 754
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mInsertedSubscriptionInfos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/telephony/SubscriptionManager;->mInsertedSubscriptionInfos:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_69} :catch_6a

    .line 757
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    goto :goto_6e

    .line 755
    :catch_6a
    move-exception v0

    .line 756
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 758
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6e
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 759
    return-void
.end method

.method public whitelist enableSubscriptionsCache()V
    .registers 3

    .line 219
    iget-object v0, p0, Lmiui/telephony/SubscriptionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 220
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lmiui/telephony/SubscriptionManager;->mSubscriptionsCacheEnabled:Z

    .line 221
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->addOnSubscriptionsChangedListenerInternal()V

    .line 222
    monitor-exit v0

    .line 223
    return-void

    .line 222
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public whitelist getActiveSubscriptionInfoList()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 385
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 386
    .local v0, "activeSubscriptionInfoList":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/telephony/SubscriptionInfo;

    .line 387
    .local v2, "subscriptionInfo":Lmiui/telephony/SubscriptionInfo;
    invoke-virtual {v2}, Lmiui/telephony/SubscriptionInfo;->isActivated()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 388
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    .end local v2    # "subscriptionInfo":Lmiui/telephony/SubscriptionInfo;
    :cond_22
    goto :goto_d

    .line 391
    :cond_23
    return-object v0
.end method

.method public whitelist getAllSubscriptionInfoCount()I
    .registers 5

    .line 400
    const/4 v0, 0x0

    .line 401
    .local v0, "count":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 403
    .local v1, "identity":J
    :try_start_5
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getAllSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_13

    move v0, v3

    .line 405
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 406
    nop

    .line 407
    return v0

    .line 405
    :catchall_13
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 406
    throw v3
.end method

.method public whitelist getAllSubscriptionInfoList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 345
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getAllSubscriptionInfoListInternal()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected abstract whitelist getAllSubscriptionInfoListInternal()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end method

.method public whitelist getAvailableSubscriptionInfoList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 257
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist getDefaultDataSlotId()I
.end method

.method public abstract whitelist getDefaultDataSubscriptionId()I
.end method

.method public abstract whitelist getDefaultDataSubscriptionInfo()Lmiui/telephony/SubscriptionInfo;
.end method

.method public whitelist getDefaultSlotId()I
    .registers 4

    .line 559
    sget v0, Lmiui/telephony/SubscriptionManager;->INVALID_SUBSCRIPTION_ID:I

    .line 560
    .local v0, "subId":I
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 561
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v0

    goto :goto_15

    .line 563
    :cond_11
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 566
    :goto_15
    sget v1, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    .line 567
    .local v1, "slotId":I
    invoke-static {v0}, Lmiui/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 568
    invoke-virtual {p0, v0}, Lmiui/telephony/SubscriptionManager;->getSlotIdForSubscription(I)I

    move-result v1

    .line 571
    :cond_21
    invoke-static {v1}, Lmiui/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v2

    if-eqz v2, :cond_2b

    sget v2, Lmiui/telephony/SubscriptionManager;->DEFAULT_SLOT_ID:I

    if-ne v1, v2, :cond_2f

    .line 572
    :cond_2b
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotIdInternal()I

    move-result v1

    .line 574
    :cond_2f
    return v1
.end method

.method protected abstract whitelist getDefaultSlotIdInternal()I
.end method

.method public whitelist getDefaultSmsSlotId()I
    .registers 2

    .line 606
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/SubscriptionManager;->getSlotIdForSubscription(I)I

    move-result v0

    return v0
.end method

.method public abstract whitelist getDefaultSmsSubscriptionId()I
.end method

.method public abstract whitelist getDefaultSmsSubscriptionInfo()Lmiui/telephony/SubscriptionInfo;
.end method

.method public whitelist getDefaultSubscriptionId()I
    .registers 3

    .line 533
    sget v0, Lmiui/telephony/SubscriptionManager;->INVALID_SUBSCRIPTION_ID:I

    .line 534
    .local v0, "subId":I
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 535
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v0

    goto :goto_15

    .line 537
    :cond_11
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 540
    :goto_15
    invoke-static {v0}, Lmiui/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    sget v1, Lmiui/telephony/SubscriptionManager;->DEFAULT_SUBSCRIPTION_ID:I

    if-ne v0, v1, :cond_27

    .line 541
    :cond_1f
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotIdInternal()I

    move-result v1

    invoke-virtual {p0, v1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    .line 543
    :cond_27
    return v0
.end method

.method public whitelist getDefaultSubscriptionInfo()Lmiui/telephony/SubscriptionInfo;
    .registers 2

    .line 552
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoForSubscription(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist getDefaultVoiceSlotId()I
.end method

.method public abstract whitelist getDefaultVoiceSubscriptionId()I
.end method

.method public abstract whitelist getDefaultVoiceSubscriptionInfo()Lmiui/telephony/SubscriptionInfo;
.end method

.method public whitelist getPhoneIdForSlot(I)I
    .registers 2
    .param p1, "slotId"    # I

    .line 482
    return p1
.end method

.method public whitelist getPhoneIdForSubscription(I)I
    .registers 4
    .param p1, "subId"    # I

    .line 453
    invoke-static {p1}, Lmiui/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 454
    sget v0, Lmiui/telephony/SubscriptionManager;->INVALID_PHONE_ID:I

    return v0

    .line 457
    :cond_9
    sget v0, Lmiui/telephony/SubscriptionManager;->DEFAULT_SUBSCRIPTION_ID:I

    if-ne p1, v0, :cond_10

    sget v0, Lmiui/telephony/SubscriptionManager;->DEFAULT_PHONE_ID:I

    goto :goto_14

    :cond_10
    invoke-virtual {p0, p1}, Lmiui/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v0

    .line 458
    .local v0, "phoneId":I
    :goto_14
    invoke-static {v0}, Lmiui/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-nez v1, :cond_1d

    sget v1, Lmiui/telephony/SubscriptionManager;->INVALID_PHONE_ID:I

    goto :goto_1e

    :cond_1d
    move v1, v0

    :goto_1e
    return v1
.end method

.method protected whitelist getSlotId(I)I
    .registers 7
    .param p1, "subId"    # I

    .line 462
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 464
    .local v0, "identity":J
    :try_start_4
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/telephony/SubscriptionInfo;

    .line 465
    .local v3, "subscriptionInfo":Lmiui/telephony/SubscriptionInfo;
    invoke-virtual {v3}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    if-ne v4, p1, :cond_26

    .line 466
    invoke-virtual {v3}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v2
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_2e

    .line 470
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 466
    return v2

    .line 468
    .end local v3    # "subscriptionInfo":Lmiui/telephony/SubscriptionInfo;
    :cond_26
    goto :goto_c

    .line 470
    :cond_27
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 471
    nop

    .line 472
    sget v2, Lmiui/telephony/SubscriptionManager;->INVALID_PHONE_ID:I

    return v2

    .line 470
    :catchall_2e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 471
    throw v2
.end method

.method public whitelist getSlotIdForPhone(I)I
    .registers 2
    .param p1, "phoneId"    # I

    .line 492
    return p1
.end method

.method public whitelist getSlotIdForSubscription(I)I
    .registers 4
    .param p1, "subId"    # I

    .line 438
    invoke-static {p1}, Lmiui/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 439
    sget v0, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    return v0

    .line 442
    :cond_9
    sget v0, Lmiui/telephony/SubscriptionManager;->DEFAULT_SUBSCRIPTION_ID:I

    if-ne p1, v0, :cond_10

    sget v0, Lmiui/telephony/SubscriptionManager;->DEFAULT_SLOT_ID:I

    goto :goto_14

    :cond_10
    invoke-virtual {p0, p1}, Lmiui/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v0

    .line 443
    .local v0, "slotId":I
    :goto_14
    invoke-static {v0}, Lmiui/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v1

    if-nez v1, :cond_1d

    sget v1, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    goto :goto_1e

    :cond_1d
    move v1, v0

    :goto_1e
    return v1
.end method

.method public whitelist getSubscriptionIdForSlot(I)I
    .registers 7
    .param p1, "slotId"    # I

    .line 501
    invoke-static {p1}, Lmiui/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 502
    sget v0, Lmiui/telephony/SubscriptionManager;->INVALID_SUBSCRIPTION_ID:I

    return v0

    .line 505
    :cond_9
    sget v0, Lmiui/telephony/SubscriptionManager;->DEFAULT_SLOT_ID:I

    if-ne p1, v0, :cond_10

    .line 506
    sget v0, Lmiui/telephony/SubscriptionManager;->DEFAULT_SUBSCRIPTION_ID:I

    return v0

    .line 509
    :cond_10
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 510
    sget v0, Lmiui/telephony/SubscriptionManager;->INVALID_SUBSCRIPTION_ID:I

    return v0

    .line 513
    :cond_1d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 515
    .local v0, "identity":J
    :try_start_21
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/telephony/SubscriptionInfo;

    .line 516
    .local v3, "subscriptionInfo":Lmiui/telephony/SubscriptionInfo;
    invoke-virtual {v3}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v4

    if-ne v4, p1, :cond_43

    .line 517
    invoke-virtual {v3}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2
    :try_end_3f
    .catchall {:try_start_21 .. :try_end_3f} :catchall_4b

    .line 521
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 517
    return v2

    .line 519
    .end local v3    # "subscriptionInfo":Lmiui/telephony/SubscriptionInfo;
    :cond_43
    goto :goto_29

    .line 521
    :cond_44
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 522
    nop

    .line 524
    sget v2, Lmiui/telephony/SubscriptionManager;->INVALID_SUBSCRIPTION_ID:I

    return v2

    .line 521
    :catchall_4b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 522
    throw v2
.end method

.method public whitelist getSubscriptionInfoCount()I
    .registers 7

    .line 417
    const/4 v0, 0x0

    .line 418
    .local v0, "activeCount":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 420
    .local v1, "identity":J
    :try_start_5
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/telephony/SubscriptionInfo;

    .line 421
    .local v4, "subscriptionInfo":Lmiui/telephony/SubscriptionInfo;
    invoke-virtual {v4}, Lmiui/telephony/SubscriptionInfo;->isActivated()Z

    move-result v5
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_27

    if-eqz v5, :cond_21

    .line 422
    add-int/lit8 v0, v0, 0x1

    .line 424
    .end local v4    # "subscriptionInfo":Lmiui/telephony/SubscriptionInfo;
    :cond_21
    goto :goto_d

    .line 426
    :cond_22
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 427
    nop

    .line 428
    return v0

    .line 426
    :catchall_27
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 427
    throw v3
.end method

.method public whitelist getSubscriptionInfoForSlot(I)Lmiui/telephony/SubscriptionInfo;
    .registers 6
    .param p1, "slotId"    # I

    .line 322
    invoke-static {p1}, Lmiui/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 323
    return-object v1

    .line 326
    :cond_8
    sget v0, Lmiui/telephony/SubscriptionManager;->DEFAULT_SLOT_ID:I

    if-ne p1, v0, :cond_10

    .line 327
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result p1

    .line 330
    :cond_10
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/telephony/SubscriptionInfo;

    .line 331
    .local v2, "subscriptionInfo":Lmiui/telephony/SubscriptionInfo;
    invoke-virtual {v2}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v3

    if-ne v3, p1, :cond_2b

    .line 332
    return-object v2

    .line 334
    .end local v2    # "subscriptionInfo":Lmiui/telephony/SubscriptionInfo;
    :cond_2b
    goto :goto_18

    .line 336
    :cond_2c
    return-object v1
.end method

.method public whitelist getSubscriptionInfoForSubscription(I)Lmiui/telephony/SubscriptionInfo;
    .registers 6
    .param p1, "subId"    # I

    .line 300
    invoke-static {p1}, Lmiui/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 301
    return-object v1

    .line 304
    :cond_8
    sget v0, Lmiui/telephony/SubscriptionManager;->DEFAULT_SUBSCRIPTION_ID:I

    if-ne p1, v0, :cond_15

    .line 305
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoForSlot(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0

    .line 308
    :cond_15
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/telephony/SubscriptionInfo;

    .line 309
    .local v2, "subscriptionInfo":Lmiui/telephony/SubscriptionInfo;
    invoke-virtual {v2}, Lmiui/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    if-ne v3, p1, :cond_30

    .line 310
    return-object v2

    .line 312
    .end local v2    # "subscriptionInfo":Lmiui/telephony/SubscriptionInfo;
    :cond_30
    goto :goto_1d

    .line 313
    :cond_31
    return-object v1
.end method

.method public whitelist getSubscriptionInfoList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 370
    iget-boolean v0, p0, Lmiui/telephony/SubscriptionManager;->mSubscriptionsCacheEnabled:Z

    if-eqz v0, :cond_b

    .line 371
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/telephony/SubscriptionManager;->ensureSubscriptionInfoCache(Z)V

    .line 372
    iget-object v0, p0, Lmiui/telephony/SubscriptionManager;->mInsertedSubscriptionInfos:Ljava/util/List;

    return-object v0

    .line 374
    :cond_b
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoListInternal()Ljava/util/List;

    move-result-object v0

    .line 375
    .local v0, "infos":Ljava/util/List;, "Ljava/util/List<Lmiui/telephony/SubscriptionInfo;>;"
    if-nez v0, :cond_17

    .line 376
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 378
    :cond_17
    return-object v0
.end method

.method protected abstract whitelist getSubscriptionInfoListInternal()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end method

.method protected whitelist onSubscriptionInfoChanged()V
    .registers 7

    .line 266
    iget-boolean v0, p0, Lmiui/telephony/SubscriptionManager;->mSubscriptionsCacheEnabled:Z

    if-nez v0, :cond_8

    .line 267
    invoke-direct {p0}, Lmiui/telephony/SubscriptionManager;->notifyOnSubscriptionsChangedListeners()V

    goto :goto_1c

    .line 269
    :cond_8
    new-instance v0, Lmiui/telephony/SubscriptionManager$1;

    invoke-direct {v0, p0}, Lmiui/telephony/SubscriptionManager$1;-><init>(Lmiui/telephony/SubscriptionManager;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Void;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v4

    check-cast v5, Ljava/lang/Void;

    aput-object v4, v2, v3

    .line 280
    invoke-virtual {v0, v1, v2}, Lmiui/telephony/SubscriptionManager$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 282
    :goto_1c
    return-void
.end method

.method public whitelist removeOnSubscriptionsChangedListener(Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V
    .registers 4
    .param p1, "listener"    # Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 198
    iget-object v0, p0, Lmiui/telephony/SubscriptionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 199
    :try_start_3
    iget-object v1, p0, Lmiui/telephony/SubscriptionManager;->mListeners:Ljava/util/ArrayList;

    if-nez v1, :cond_9

    .line 200
    monitor-exit v0

    return-void

    .line 202
    :cond_9
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 203
    iget-object v1, p0, Lmiui/telephony/SubscriptionManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1e

    .line 204
    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/telephony/SubscriptionManager;->mListeners:Ljava/util/ArrayList;

    .line 206
    iget-boolean v1, p0, Lmiui/telephony/SubscriptionManager;->mSubscriptionsCacheEnabled:Z

    if-nez v1, :cond_1e

    .line 207
    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListenerInternal()V

    .line 210
    :cond_1e
    monitor-exit v0

    .line 211
    return-void

    .line 210
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method protected abstract whitelist removeOnSubscriptionsChangedListenerInternal()V
.end method

.method public abstract whitelist setDefaultDataSlotId(I)V
.end method

.method public whitelist setDefaultDataSubscriptionId(I)V
    .registers 3
    .param p1, "subId"    # I

    .line 596
    invoke-virtual {p0, p1}, Lmiui/telephony/SubscriptionManager;->getSlotIdForSubscription(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/SubscriptionManager;->setDefaultDataSlotId(I)V

    .line 597
    return-void
.end method

.method public whitelist setDefaultSmsSlotId(I)V
    .registers 3
    .param p1, "slotId"    # I

    .line 612
    invoke-static {p1}, Lmiui/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 613
    sget p1, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    .line 616
    :cond_8
    sget v0, Lmiui/telephony/SubscriptionManager;->DEFAULT_SLOT_ID:I

    if-eq p1, v0, :cond_1b

    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getDefaultSmsSlotId()I

    move-result v0

    if-ne p1, v0, :cond_13

    goto :goto_1b

    .line 620
    :cond_13
    invoke-virtual {p0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/SubscriptionManager;->setDefaultSmsSubscriptionId(I)V

    .line 621
    return-void

    .line 617
    :cond_1b
    :goto_1b
    return-void
.end method

.method public abstract whitelist setDefaultSmsSubscriptionId(I)V
.end method

.method public abstract whitelist setDefaultVoiceSlotId(I)V
.end method

.method public whitelist setDefaultVoiceSubscriptionId(I)V
    .registers 3
    .param p1, "subId"    # I

    .line 584
    invoke-virtual {p0, p1}, Lmiui/telephony/SubscriptionManager;->getSlotIdForSubscription(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/telephony/SubscriptionManager;->setDefaultVoiceSlotId(I)V

    .line 585
    return-void
.end method
