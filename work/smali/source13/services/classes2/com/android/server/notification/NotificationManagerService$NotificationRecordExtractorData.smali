.class Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NotificationRecordExtractorData"
.end annotation


# instance fields
.field mAllowBubble:Z

.field mChannel:Landroid/app/NotificationChannel;

.field mGroupKey:Ljava/lang/String;

.field mImportance:I

.field mIsBubble:Z

.field mIsConversation:Z

.field mOverridePeople:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPosition:I

.field mRankingScore:F

.field mShowBadge:Z

.field mSmartReplies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field mSnoozeCriteria:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/service/notification/SnoozeCriterion;",
            ">;"
        }
    .end annotation
.end field

.field mSuppressVisually:Ljava/lang/Integer;

.field mSystemSmartActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation
.end field

.field mUserSentiment:Ljava/lang/Integer;

.field mVisibility:I


# direct methods
.method constructor <init>(IIZZZLandroid/app/NotificationChannel;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/ArrayList;Ljava/util/ArrayList;IFZ)V
    .registers 33
    .param p1, "position"    # I
    .param p2, "visibility"    # I
    .param p3, "showBadge"    # Z
    .param p4, "allowBubble"    # Z
    .param p5, "isBubble"    # Z
    .param p6, "channel"    # Landroid/app/NotificationChannel;
    .param p7, "groupKey"    # Ljava/lang/String;
    .param p10, "userSentiment"    # Ljava/lang/Integer;
    .param p11, "suppressVisually"    # Ljava/lang/Integer;
    .param p14, "importance"    # I
    .param p15, "rankingScore"    # F
    .param p16, "isConversation"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZZZ",
            "Landroid/app/NotificationChannel;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/service/notification/SnoozeCriterion;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Landroid/app/Notification$Action;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;IFZ)V"
        }
    .end annotation

    .line 8853
    .local p8, "overridePeople":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p9, "snoozeCriteria":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/SnoozeCriterion;>;"
    .local p12, "systemSmartActions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Notification$Action;>;"
    .local p13, "smartReplies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8854
    move/from16 v1, p1

    iput v1, v0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mPosition:I

    .line 8855
    move/from16 v2, p2

    iput v2, v0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mVisibility:I

    .line 8856
    move/from16 v3, p3

    iput-boolean v3, v0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mShowBadge:Z

    .line 8857
    move/from16 v4, p4

    iput-boolean v4, v0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mAllowBubble:Z

    .line 8858
    move/from16 v5, p5

    iput-boolean v5, v0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mIsBubble:Z

    .line 8859
    move-object/from16 v6, p6

    iput-object v6, v0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mChannel:Landroid/app/NotificationChannel;

    .line 8860
    move-object/from16 v7, p7

    iput-object v7, v0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mGroupKey:Ljava/lang/String;

    .line 8861
    move-object/from16 v8, p8

    iput-object v8, v0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mOverridePeople:Ljava/util/ArrayList;

    .line 8862
    move-object/from16 v9, p9

    iput-object v9, v0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mSnoozeCriteria:Ljava/util/ArrayList;

    .line 8863
    move-object/from16 v10, p10

    iput-object v10, v0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mUserSentiment:Ljava/lang/Integer;

    .line 8864
    move-object/from16 v11, p11

    iput-object v11, v0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mSuppressVisually:Ljava/lang/Integer;

    .line 8865
    move-object/from16 v12, p12

    iput-object v12, v0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mSystemSmartActions:Ljava/util/ArrayList;

    .line 8866
    move-object/from16 v13, p13

    iput-object v13, v0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mSmartReplies:Ljava/util/ArrayList;

    .line 8867
    move/from16 v14, p14

    iput v14, v0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mImportance:I

    .line 8868
    move/from16 v15, p15

    iput v15, v0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mRankingScore:F

    .line 8869
    move/from16 v1, p16

    iput-boolean v1, v0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mIsConversation:Z

    .line 8870
    return-void
.end method


# virtual methods
.method hasDiffForLoggingLocked(Lcom/android/server/notification/NotificationRecord;I)Z
    .registers 5
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "newPosition"    # I

    .line 8900
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mPosition:I

    if-ne v0, p2, :cond_77

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mChannel:Landroid/app/NotificationChannel;

    .line 8901
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mGroupKey:Ljava/lang/String;

    .line 8902
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mOverridePeople:Ljava/util/ArrayList;

    .line 8903
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getPeopleOverride()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mSnoozeCriteria:Ljava/util/ArrayList;

    .line 8904
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSnoozeCriteria()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mUserSentiment:Ljava/lang/Integer;

    .line 8905
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserSentiment()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mSystemSmartActions:Ljava/util/ArrayList;

    .line 8906
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSystemGeneratedSmartActions()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mSmartReplies:Ljava/util/ArrayList;

    .line 8907
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSmartReplies()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    iget v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mImportance:I

    .line 8908
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v1

    if-ne v0, v1, :cond_77

    iget v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mRankingScore:F

    .line 8909
    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->rankingScoreMatches(F)Z

    move-result v0

    if-eqz v0, :cond_77

    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mIsConversation:Z

    .line 8910
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isConversation()Z

    move-result v1

    if-eq v0, v1, :cond_75

    goto :goto_77

    :cond_75
    const/4 v0, 0x0

    goto :goto_78

    :cond_77
    :goto_77
    const/4 v0, 0x1

    .line 8900
    :goto_78
    return v0
.end method

.method hasDiffForRankingLocked(Lcom/android/server/notification/NotificationRecord;I)Z
    .registers 5
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "newPosition"    # I

    .line 8875
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mPosition:I

    if-ne v0, p2, :cond_9b

    iget v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mVisibility:I

    .line 8876
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v1

    if-ne v0, v1, :cond_9b

    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mShowBadge:Z

    .line 8877
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->canShowBadge()Z

    move-result v1

    if-ne v0, v1, :cond_9b

    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mAllowBubble:Z

    .line 8878
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->canBubble()Z

    move-result v1

    if-ne v0, v1, :cond_9b

    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mIsBubble:Z

    .line 8879
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->isBubbleNotification()Z

    move-result v1

    if-ne v0, v1, :cond_9b

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mChannel:Landroid/app/NotificationChannel;

    .line 8880
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9b

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mGroupKey:Ljava/lang/String;

    .line 8881
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9b

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mOverridePeople:Ljava/util/ArrayList;

    .line 8882
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getPeopleOverride()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9b

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mSnoozeCriteria:Ljava/util/ArrayList;

    .line 8883
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSnoozeCriteria()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9b

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mUserSentiment:Ljava/lang/Integer;

    .line 8884
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserSentiment()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9b

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mSuppressVisually:Ljava/lang/Integer;

    .line 8885
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSuppressedVisualEffects()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9b

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mSystemSmartActions:Ljava/util/ArrayList;

    .line 8886
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSystemGeneratedSmartActions()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9b

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mSmartReplies:Ljava/util/ArrayList;

    .line 8887
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSmartReplies()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9b

    iget v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationRecordExtractorData;->mImportance:I

    .line 8888
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v1

    if-eq v0, v1, :cond_99

    goto :goto_9b

    :cond_99
    const/4 v0, 0x0

    goto :goto_9c

    :cond_9b
    :goto_9b
    const/4 v0, 0x1

    .line 8875
    :goto_9c
    return v0
.end method
