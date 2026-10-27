.class public Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;
.super Ljava/lang/Object;
.source "ZenModeEventLogger.java"


# instance fields
.field public mCallingUid:I

.field public mNewConfig:Landroid/service/notification/ZenModeConfig;

.field public mNewPolicy:Landroid/app/NotificationManager$Policy;

.field public mNewZenMode:I

.field public mOrigin:I

.field public mPrevConfig:Landroid/service/notification/ZenModeConfig;

.field public mPrevPolicy:Landroid/app/NotificationManager$Policy;

.field public mPrevZenMode:I


# direct methods
.method public static bridge synthetic -$$Nest$mgetChangedAutomaticRules(Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;)Landroid/util/ArrayMap;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->getChangedAutomaticRules()Landroid/util/ArrayMap;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetNewManualRuleEnabler(Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->getNewManualRuleEnabler()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetRulePackageAndUser(Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;Ljava/lang/String;Landroid/service/notification/ZenModeDiff$RuleDiff;)Landroid/util/Pair;
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->getRulePackageAndUser(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$RuleDiff;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$minit(Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;Lcom/android/server/notification/ZenModeEventLogger$ZenModeInfo;Lcom/android/server/notification/ZenModeEventLogger$ZenModeInfo;II)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->init(Lcom/android/server/notification/ZenModeEventLogger$ZenModeInfo;Lcom/android/server/notification/ZenModeEventLogger$ZenModeInfo;II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshouldLogChanges(Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;)Z
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->shouldLogChanges()Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 237
    iput v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevZenMode:I

    .line 238
    iput v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewZenMode:I

    .line 241
    iput v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mCallingUid:I

    const/4 v0, 0x0

    .line 242
    iput v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mOrigin:I

    return-void
.end method


# virtual methods
.method public activeRulesList(Landroid/service/notification/ZenModeConfig;)Ljava/util/List;
    .registers 4

    .line 396
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_8

    goto :goto_3f

    .line 400
    :cond_8
    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig;->isManualActive()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 402
    iget-object v0, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig$ZenRule;->copy()Landroid/service/notification/ZenModeConfig$ZenRule;

    move-result-object v0

    const/16 v1, 0x3e7

    .line 403
    iput v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    .line 404
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    :cond_1b
    iget-object p1, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    if-eqz p1, :cond_3f

    .line 408
    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_27
    :goto_27
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v0, :cond_27

    .line 409
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig$ZenRule;->isActive()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 410
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_27

    :cond_3f
    :goto_3f
    return-object p0
.end method

.method public getActiveRuleTypes()[I
    .registers 4

    .line 437
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 438
    iget-object v1, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {p0, v1}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->activeRulesList(Landroid/service/notification/ZenModeConfig;)Ljava/util/List;

    move-result-object p0

    .line 439
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_15

    .line 440
    new-array p0, v2, [I

    return-object p0

    .line 443
    :cond_15
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_19
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 444
    iget v1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 448
    :cond_2f
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 449
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [I

    .line 450
    :goto_38
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_4d

    .line 451
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    :cond_4d
    return-object p0
.end method

.method public getAreChannelsBypassing()Z
    .registers 3

    .line 553
    iget-object p0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    const/4 v0, 0x0

    if-eqz p0, :cond_c

    .line 554
    iget p0, p0, Landroid/app/NotificationManager$Policy;->state:I

    const/4 v1, 0x1

    and-int/2addr p0, v1

    if-eqz p0, :cond_c

    return v1

    :cond_c
    return v0
.end method

.method public getChangeOrigin()I
    .registers 1

    .line 482
    iget p0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mOrigin:I

    return p0
.end method

.method public final getChangedAutomaticRules()Landroid/util/ArrayMap;
    .registers 4

    .line 578
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 580
    new-instance v1, Landroid/service/notification/ZenModeDiff$ConfigDiff;

    iget-object v2, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevConfig:Landroid/service/notification/ZenModeConfig;

    iget-object p0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewConfig:Landroid/service/notification/ZenModeConfig;

    invoke-direct {v1, v2, p0}, Landroid/service/notification/ZenModeDiff$ConfigDiff;-><init>(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig;)V

    .line 581
    invoke-virtual {v1}, Landroid/service/notification/ZenModeDiff$ConfigDiff;->hasDiff()Z

    move-result p0

    if-nez p0, :cond_15

    goto :goto_1c

    .line 585
    :cond_15
    invoke-virtual {v1}, Landroid/service/notification/ZenModeDiff$ConfigDiff;->getAllAutomaticRuleDiffs()Landroid/util/ArrayMap;

    move-result-object p0

    if-eqz p0, :cond_1c

    return-object p0

    :cond_1c
    :goto_1c
    return-object v0
.end method

.method public getChangedRuleType()I
    .registers 4

    .line 348
    new-instance v0, Landroid/service/notification/ZenModeDiff$ConfigDiff;

    iget-object v1, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevConfig:Landroid/service/notification/ZenModeConfig;

    iget-object p0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewConfig:Landroid/service/notification/ZenModeConfig;

    invoke-direct {v0, v1, p0}, Landroid/service/notification/ZenModeDiff$ConfigDiff;-><init>(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig;)V

    .line 349
    invoke-virtual {v0}, Landroid/service/notification/ZenModeDiff$ConfigDiff;->hasDiff()Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_11

    return v1

    .line 356
    :cond_11
    invoke-virtual {v0}, Landroid/service/notification/ZenModeDiff$ConfigDiff;->getManualRuleDiff()Landroid/service/notification/ZenModeDiff$RuleDiff;

    move-result-object p0

    if-eqz p0, :cond_37

    .line 357
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->hasDiff()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 360
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->wasAdded()Z

    move-result v2

    if-nez v2, :cond_35

    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->wasRemoved()Z

    move-result v2

    if-nez v2, :cond_35

    .line 361
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->becameActive()Z

    move-result v2

    if-nez v2, :cond_35

    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->becameInactive()Z

    move-result p0

    if-eqz p0, :cond_37

    :cond_35
    const/4 p0, 0x1

    return p0

    .line 366
    :cond_37
    invoke-virtual {v0}, Landroid/service/notification/ZenModeDiff$ConfigDiff;->getAllAutomaticRuleDiffs()Landroid/util/ArrayMap;

    move-result-object p0

    if-eqz p0, :cond_67

    .line 368
    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_45
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/ZenModeDiff$RuleDiff;

    if-eqz v0, :cond_45

    .line 369
    invoke-virtual {v0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->hasDiff()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 371
    invoke-virtual {v0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->becameActive()Z

    move-result v2

    if-nez v2, :cond_65

    invoke-virtual {v0}, Landroid/service/notification/ZenModeDiff$RuleDiff;->becameInactive()Z

    move-result v0

    if-eqz v0, :cond_45

    :cond_65
    const/4 p0, 0x2

    return p0

    :cond_67
    return v1
.end method

.method public getDNDPolicyProto()[B
    .registers 6

    .line 496
    iget v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewZenMode:I

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 500
    :cond_6
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 501
    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v1, v0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 504
    iget-object v2, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    if-eqz v2, :cond_178

    .line 505
    invoke-virtual {v2}, Landroid/app/NotificationManager$Policy;->allowCalls()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->toState(Z)I

    move-result v2

    const-wide v3, 0x10e00000001L

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 506
    iget-object v2, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    .line 507
    invoke-virtual {v2}, Landroid/app/NotificationManager$Policy;->allowRepeatCallers()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->toState(Z)I

    move-result v2

    const-wide v3, 0x10e00000002L

    .line 506
    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 508
    iget-object v2, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v2}, Landroid/app/NotificationManager$Policy;->allowMessages()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->toState(Z)I

    move-result v2

    const-wide v3, 0x10e00000003L

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 509
    iget-object v2, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v2}, Landroid/app/NotificationManager$Policy;->allowConversations()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->toState(Z)I

    move-result v2

    const-wide v3, 0x10e00000004L

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 510
    iget-object v2, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v2}, Landroid/app/NotificationManager$Policy;->allowReminders()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->toState(Z)I

    move-result v2

    const-wide v3, 0x10e00000005L

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 511
    iget-object v2, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v2}, Landroid/app/NotificationManager$Policy;->allowEvents()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->toState(Z)I

    move-result v2

    const-wide v3, 0x10e00000006L

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 512
    iget-object v2, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v2}, Landroid/app/NotificationManager$Policy;->allowAlarms()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->toState(Z)I

    move-result v2

    const-wide v3, 0x10e00000007L

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 513
    iget-object v2, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v2}, Landroid/app/NotificationManager$Policy;->allowMedia()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->toState(Z)I

    move-result v2

    const-wide v3, 0x10e00000008L

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 514
    iget-object v2, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v2}, Landroid/app/NotificationManager$Policy;->allowSystem()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->toState(Z)I

    move-result v2

    const-wide v3, 0x10e00000009L

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 516
    iget-object v2, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v2}, Landroid/app/NotificationManager$Policy;->showFullScreenIntents()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->toState(Z)I

    move-result v2

    const-wide v3, 0x10e0000000aL

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 517
    iget-object v2, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v2}, Landroid/app/NotificationManager$Policy;->showLights()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->toState(Z)I

    move-result v2

    const-wide v3, 0x10e0000000bL

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 518
    iget-object v2, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v2}, Landroid/app/NotificationManager$Policy;->showPeeking()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->toState(Z)I

    move-result v2

    const-wide v3, 0x10e0000000cL

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 519
    iget-object v2, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v2}, Landroid/app/NotificationManager$Policy;->showStatusBarIcons()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->toState(Z)I

    move-result v2

    const-wide v3, 0x10e0000000dL

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 520
    iget-object v2, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v2}, Landroid/app/NotificationManager$Policy;->showBadges()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->toState(Z)I

    move-result v2

    const-wide v3, 0x10e0000000eL

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 521
    iget-object v2, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {v2}, Landroid/app/NotificationManager$Policy;->showAmbient()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->toState(Z)I

    move-result v2

    const-wide v3, 0x10e0000000fL

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 522
    iget-object v2, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    .line 523
    invoke-virtual {v2}, Landroid/app/NotificationManager$Policy;->showInNotificationList()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->toState(Z)I

    move-result v2

    const-wide v3, 0x10e00000010L

    .line 522
    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 529
    iget-object v2, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    .line 531
    invoke-virtual {v2}, Landroid/app/NotificationManager$Policy;->allowCallsFrom()I

    move-result v2

    .line 530
    invoke-static {v2}, Landroid/service/notification/ZenAdapters;->prioritySendersToPeopleType(I)I

    move-result v2

    const-wide v3, 0x10e00000011L

    .line 529
    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 532
    iget-object v2, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    .line 534
    invoke-virtual {v2}, Landroid/app/NotificationManager$Policy;->allowMessagesFrom()I

    move-result v2

    .line 533
    invoke-static {v2}, Landroid/service/notification/ZenAdapters;->prioritySendersToPeopleType(I)I

    move-result v2

    const-wide v3, 0x10e00000012L

    .line 532
    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 535
    iget-object v2, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    .line 536
    invoke-virtual {v2}, Landroid/app/NotificationManager$Policy;->allowConversationsFrom()I

    move-result v2

    const-wide v3, 0x10e00000013L

    .line 535
    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 538
    iget-object p0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {p0}, Landroid/app/NotificationManager$Policy;->allowPriorityChannels()Z

    move-result p0

    if-eqz p0, :cond_16e

    const/4 p0, 0x1

    goto :goto_16f

    :cond_16e
    const/4 p0, 0x2

    :goto_16f
    const-wide v2, 0x10e00000014L

    .line 537
    invoke-virtual {v1, v2, v3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_17f

    .line 542
    :cond_178
    const-string p0, "ZenModeEventLogger"

    const-string v2, "attempted to write zen mode log event with null policy"

    invoke-static {p0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :goto_17f
    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 546
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public getEventId()Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;
    .registers 3

    .line 311
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->shouldLogChanges()Z

    move-result v0

    const-string v1, "ZenModeEventLogger"

    if-nez v0, :cond_d

    .line 312
    const-string v0, "attempt to get DNDStateChanged fields without shouldLog=true"

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->zenModeFlipped()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 315
    iget p0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevZenMode:I

    if-nez p0, :cond_1a

    .line 316
    sget-object p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;->DND_TURNED_ON:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;

    return-object p0

    .line 318
    :cond_1a
    sget-object p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;->DND_TURNED_OFF:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;

    return-object p0

    .line 322
    :cond_1d
    iget v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewZenMode:I

    if-nez v0, :cond_35

    .line 326
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->hasPolicyDiff()Z

    move-result v0

    if-nez v0, :cond_2d

    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->hasChannelsBypassingDiff()Z

    move-result p0

    if-eqz p0, :cond_32

    .line 327
    :cond_2d
    const-string p0, "Detected policy diff even though DND is OFF and not toggled"

    invoke-static {v1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_32
    sget-object p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;->DND_ACTIVE_RULES_CHANGED:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;

    return-object p0

    .line 333
    :cond_35
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->hasPolicyDiff()Z

    move-result v0

    if-nez v0, :cond_45

    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->hasChannelsBypassingDiff()Z

    move-result p0

    if-eqz p0, :cond_42

    goto :goto_45

    .line 338
    :cond_42
    sget-object p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;->DND_ACTIVE_RULES_CHANGED:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;

    return-object p0

    .line 334
    :cond_45
    :goto_45
    sget-object p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;->DND_POLICY_CHANGED:Lcom/android/server/notification/ZenModeEventLogger$ZenStateChangedEvent;

    return-object p0
.end method

.method public getIsUserAction()Z
    .registers 2

    .line 458
    iget p0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mOrigin:I

    const/4 v0, 0x3

    if-eq p0, v0, :cond_b

    const/4 v0, 0x7

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method

.method public final getNewManualRuleEnabler()Ljava/lang/String;
    .registers 1

    .line 625
    iget-object p0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewConfig:Landroid/service/notification/ZenModeConfig;

    if-eqz p0, :cond_c

    iget-object p0, p0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-nez p0, :cond_9

    goto :goto_c

    .line 628
    :cond_9
    iget-object p0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    return-object p0

    :cond_c
    :goto_c
    const/4 p0, 0x0

    return-object p0
.end method

.method public getNumRulesActive()I
    .registers 2

    .line 429
    iget-object v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {p0, v0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->numActiveRulesInConfig(Landroid/service/notification/ZenModeConfig;)I

    move-result p0

    return p0
.end method

.method public getPackageUid()I
    .registers 1

    .line 475
    iget p0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mCallingUid:I

    return p0
.end method

.method public final getRulePackageAndUser(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$RuleDiff;)Landroid/util/Pair;
    .registers 4

    .line 599
    iget-object v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewConfig:Landroid/service/notification/ZenModeConfig;

    .line 600
    invoke-virtual {p2}, Landroid/service/notification/ZenModeDiff$RuleDiff;->wasRemoved()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 601
    iget-object v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevConfig:Landroid/service/notification/ZenModeConfig;

    :cond_a
    const/4 p0, 0x0

    if-nez v0, :cond_e

    return-object p0

    .line 608
    :cond_e
    iget-object p2, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1, p0}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz p1, :cond_43

    .line 610
    iget-object p2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    if-eqz p2, :cond_2e

    .line 611
    new-instance p0, Landroid/util/Pair;

    iget-object p1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget p2, v0, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 613
    :cond_2e
    iget-object p2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    if-eqz p2, :cond_43

    .line 614
    new-instance p0, Landroid/util/Pair;

    iget-object p1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget p2, v0, Landroid/service/notification/ZenModeConfig;->user:I

    .line 615
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_43
    return-object p0
.end method

.method public final hasActiveRuleCountDiff()Z
    .registers 3

    .line 385
    iget-object v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {p0, v0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->numActiveRulesInConfig(Landroid/service/notification/ZenModeConfig;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {p0, v1}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->numActiveRulesInConfig(Landroid/service/notification/ZenModeConfig;)I

    move-result p0

    if-eq v0, p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public final hasChannelsBypassingDiff()Z
    .registers 4

    .line 560
    iget-object v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevPolicy:Landroid/app/NotificationManager$Policy;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_d

    .line 561
    iget v0, v0, Landroid/app/NotificationManager$Policy;->state:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_d

    move v0, v2

    goto :goto_e

    :cond_d
    move v0, v1

    .line 562
    :goto_e
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->getAreChannelsBypassing()Z

    move-result p0

    if-eq v0, p0, :cond_15

    return v2

    :cond_15
    return v1
.end method

.method public final hasPolicyDiff()Z
    .registers 2

    .line 264
    iget-object v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevPolicy:Landroid/app/NotificationManager$Policy;

    if-eqz v0, :cond_e

    iget-object p0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    invoke-static {v0, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public final init(Lcom/android/server/notification/ZenModeEventLogger$ZenModeInfo;Lcom/android/server/notification/ZenModeEventLogger$ZenModeInfo;II)V
    .registers 6

    .line 248
    iget v0, p1, Lcom/android/server/notification/ZenModeEventLogger$ZenModeInfo;->mZenMode:I

    iput v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevZenMode:I

    .line 249
    iget v0, p2, Lcom/android/server/notification/ZenModeEventLogger$ZenModeInfo;->mZenMode:I

    iput v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewZenMode:I

    .line 250
    iget-object v0, p1, Lcom/android/server/notification/ZenModeEventLogger$ZenModeInfo;->mConfig:Landroid/service/notification/ZenModeConfig;

    iput-object v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevConfig:Landroid/service/notification/ZenModeConfig;

    .line 251
    iget-object v0, p2, Lcom/android/server/notification/ZenModeEventLogger$ZenModeInfo;->mConfig:Landroid/service/notification/ZenModeConfig;

    iput-object v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewConfig:Landroid/service/notification/ZenModeConfig;

    .line 252
    iget-object p1, p1, Lcom/android/server/notification/ZenModeEventLogger$ZenModeInfo;->mPolicy:Landroid/app/NotificationManager$Policy;

    iput-object p1, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevPolicy:Landroid/app/NotificationManager$Policy;

    .line 253
    iget-object p1, p2, Lcom/android/server/notification/ZenModeEventLogger$ZenModeInfo;->mPolicy:Landroid/app/NotificationManager$Policy;

    iput-object p1, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewPolicy:Landroid/app/NotificationManager$Policy;

    .line 254
    iput p3, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mCallingUid:I

    .line 255
    iput p4, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mOrigin:I

    return-void
.end method

.method public isFromSystemOrSystemUi()Z
    .registers 3

    .line 463
    iget p0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mOrigin:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_11

    const/4 v1, 0x2

    if-eq p0, v1, :cond_11

    const/4 v1, 0x5

    if-eq p0, v1, :cond_11

    const/4 v1, 0x6

    if-ne p0, v1, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    return p0

    :cond_11
    :goto_11
    return v0
.end method

.method public numActiveRulesInConfig(Landroid/service/notification/ZenModeConfig;)I
    .registers 2

    .line 424
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->activeRulesList(Landroid/service/notification/ZenModeConfig;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final shouldLogChanges()Z
    .registers 4

    .line 273
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->zenModeFlipped()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 277
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->hasActiveRuleCountDiff()Z

    move-result v0

    if-eqz v0, :cond_f

    return v1

    .line 287
    :cond_f
    iget v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewZenMode:I

    const/4 v2, 0x0

    if-nez v0, :cond_15

    return v2

    .line 290
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->hasPolicyDiff()Z

    move-result v0

    if-nez v0, :cond_23

    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->hasActiveRuleCountDiff()Z

    move-result p0

    if-eqz p0, :cond_22

    goto :goto_23

    :cond_22
    return v2

    :cond_23
    :goto_23
    return v1
.end method

.method public final toState(Z)I
    .registers 2

    .line 0
    if-eqz p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x2

    return p0
.end method

.method public final zenModeFlipped()Z
    .registers 3

    .line 295
    iget v0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mPrevZenMode:I

    iget p0, p0, Lcom/android/server/notification/ZenModeEventLogger$ZenStateChanges;->mNewZenMode:I

    const/4 v1, 0x0

    if-ne v0, p0, :cond_8

    return v1

    :cond_8
    if-eqz v0, :cond_e

    if-nez p0, :cond_d

    goto :goto_e

    :cond_d
    return v1

    :cond_e
    :goto_e
    const/4 p0, 0x1

    return p0
.end method
