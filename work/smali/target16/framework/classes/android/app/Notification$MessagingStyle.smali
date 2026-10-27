.class public Landroid/app/Notification$MessagingStyle;
.super Landroid/app/Notification$Style;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessagingStyle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Notification$MessagingStyle$Message;,
        Landroid/app/Notification$MessagingStyle$ConversationType;
    }
.end annotation


# static fields
.field public static final blacklist CONVERSATION_TYPE_IMPORTANT:I = 0x2

.field public static final blacklist CONVERSATION_TYPE_LEGACY:I = 0x0

.field public static final blacklist CONVERSATION_TYPE_NORMAL:I = 0x1

.field public static final whitelist MAXIMUM_RETAINED_MESSAGES:I = 0x19


# instance fields
.field greylist-max-o mConversationTitle:Ljava/lang/CharSequence;

.field blacklist mConversationType:I

.field greylist-max-o mHistoricMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mIsGroupConversation:Z

.field greylist-max-o mMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mShortcutIcon:Landroid/graphics/drawable/Icon;

.field blacklist mUnreadMessageCount:I

.field greylist-max-o mUser:Landroid/app/Person;


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 2

    .line 9351
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 9345
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    .line 9346
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    .line 9348
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Notification$MessagingStyle;->mConversationType:I

    .line 9352
    return-void
.end method

.method public constructor whitelist <init>(Landroid/app/Person;)V
    .registers 3

    .line 9373
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 9345
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    .line 9346
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    .line 9348
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Notification$MessagingStyle;->mConversationType:I

    .line 9374
    iput-object p1, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    .line 9375
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;)V
    .registers 3

    .line 9363
    new-instance v0, Landroid/app/Person$Builder;

    invoke-direct {v0}, Landroid/app/Person$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroid/app/Person$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/app/Notification$MessagingStyle;-><init>(Landroid/app/Person;)V

    .line 9364
    return-void
.end method

.method private greylist-max-o findLatestIncomingMessage()Landroid/app/Notification$MessagingStyle$Message;
    .registers 2

    .line 9877
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-static {v0}, Landroid/app/Notification$MessagingStyle;->findLatestIncomingMessage(Ljava/util/List;)Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o findLatestIncomingMessage(Ljava/util/List;)Landroid/app/Notification$MessagingStyle$Message;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;)",
            "Landroid/app/Notification$MessagingStyle$Message;"
        }
    .end annotation

    .line 9886
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_26

    .line 9887
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Notification$MessagingStyle$Message;

    .line 9889
    invoke-static {v1}, Landroid/app/Notification$MessagingStyle$Message;->-$$Nest$fgetmSender(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Person;

    move-result-object v2

    if-eqz v2, :cond_23

    invoke-static {v1}, Landroid/app/Notification$MessagingStyle$Message;->-$$Nest$fgetmSender(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Person;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 9890
    return-object v1

    .line 9886
    :cond_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 9893
    :cond_26
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_39

    .line 9895
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Notification$MessagingStyle$Message;

    return-object p0

    .line 9897
    :cond_39
    const/4 p0, 0x0

    return-object p0
.end method

.method private greylist-max-o fixTitleAndTextExtras(Landroid/os/Bundle;)V
    .registers 7

    .line 9698
    invoke-direct {p0}, Landroid/app/Notification$MessagingStyle;->findLatestIncomingMessage()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v0

    .line 9699
    const/4 v1, 0x0

    if-nez v0, :cond_9

    move-object v2, v1

    goto :goto_d

    :cond_9
    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->-$$Nest$fgetmText(Landroid/app/Notification$MessagingStyle$Message;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 9700
    :goto_d
    if-nez v0, :cond_10

    goto :goto_30

    .line 9701
    :cond_10
    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->-$$Nest$fgetmSender(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Person;

    move-result-object v1

    if-eqz v1, :cond_2a

    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->-$$Nest$fgetmSender(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Person;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_25

    goto :goto_2a

    .line 9702
    :cond_25
    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->-$$Nest$fgetmSender(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Person;

    move-result-object v0

    goto :goto_2c

    :cond_2a
    :goto_2a
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    :goto_2c
    invoke-virtual {v0}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    .line 9704
    :goto_30
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_61

    .line 9705
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5e

    .line 9706
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    .line 9707
    iget-object v3, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v3}, Landroid/app/Notification$Builder;->-$$Nest$fgetmContext(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    .line 9709
    invoke-virtual {v0, v4}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    filled-new-array {v4, v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 9707
    const v1, 0x1040722

    invoke-virtual {v3, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 9710
    goto :goto_62

    .line 9711
    :cond_5e
    iget-object v1, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    goto :goto_62

    .line 9714
    :cond_61
    nop

    .line 9716
    :goto_62
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->cleanUpSpansAndNewLines()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 9717
    invoke-static {v1}, Landroid/app/Notification;->-$$Nest$smstripStyling(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 9719
    :cond_6c
    if-eqz v1, :cond_73

    .line 9720
    const-string v0, "android.title"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 9722
    :cond_73
    if-eqz v2, :cond_7a

    .line 9723
    const-string v0, "android.text"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 9725
    :cond_7a
    return-void
.end method

.method private blacklist fixTitleAndTextForCompactMessaging(Landroid/app/Notification$StandardTemplateParams;)V
    .registers 10

    .line 9728
    invoke-direct {p0}, Landroid/app/Notification$MessagingStyle;->findLatestIncomingMessage()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v0

    .line 9729
    const/4 v1, 0x0

    if-nez v0, :cond_9

    move-object v2, v1

    goto :goto_d

    :cond_9
    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->-$$Nest$fgetmText(Landroid/app/Notification$MessagingStyle$Message;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 9730
    :goto_d
    if-nez v0, :cond_11

    move-object v0, v1

    goto :goto_31

    .line 9731
    :cond_11
    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->-$$Nest$fgetmSender(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Person;

    move-result-object v3

    if-eqz v3, :cond_2b

    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->-$$Nest$fgetmSender(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Person;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_26

    goto :goto_2b

    .line 9732
    :cond_26
    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->-$$Nest$fgetmSender(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Person;

    move-result-object v0

    goto :goto_2d

    :cond_2b
    :goto_2b
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    :goto_2d
    invoke-virtual {v0}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    .line 9734
    :goto_31
    iget-boolean v3, p0, Landroid/app/Notification$MessagingStyle;->mIsGroupConversation:Z

    if-eqz v3, :cond_38

    iget-object v3, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    goto :goto_39

    :cond_38
    move-object v3, v1

    .line 9737
    :goto_39
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v4

    .line 9738
    const-string v5, ""

    const v6, 0x1040722

    if-eqz v0, :cond_57

    .line 9739
    iget-object v7, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v7}, Landroid/app/Notification$Builder;->-$$Nest$fgetmContext(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v7

    .line 9741
    invoke-virtual {v4, v0}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    filled-new-array {v0, v5}, [Ljava/lang/Object;

    move-result-object v0

    .line 9739
    invoke-virtual {v7, v6, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6b

    .line 9742
    :cond_57
    if-eqz v3, :cond_6b

    .line 9743
    iget-object v7, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v7}, Landroid/app/Notification$Builder;->-$$Nest$fgetmContext(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v7

    .line 9745
    invoke-virtual {v4, v3}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    .line 9743
    invoke-virtual {v7, v6, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 9748
    :cond_6b
    :goto_6b
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->cleanUpSpansAndNewLines()Z

    move-result v4

    if-eqz v4, :cond_79

    .line 9749
    invoke-static {v3}, Landroid/app/Notification;->-$$Nest$smstripStyling(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 9750
    invoke-static {v0}, Landroid/app/Notification;->-$$Nest$smstripStyling(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 9754
    :cond_79
    invoke-direct {p0}, Landroid/app/Notification$MessagingStyle;->showConversationTitle()Z

    move-result v4

    if-eqz v4, :cond_83

    if-eqz v3, :cond_83

    const/4 v4, 0x1

    goto :goto_84

    :cond_83
    const/4 v4, 0x0

    .line 9756
    :goto_84
    if-eqz v4, :cond_87

    .line 9757
    goto :goto_88

    .line 9759
    :cond_87
    move-object v3, v0

    .line 9762
    :goto_88
    invoke-virtual {p1, v3}, Landroid/app/Notification$StandardTemplateParams;->title(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;

    .line 9765
    if-eqz v4, :cond_94

    .line 9766
    invoke-virtual {p1, v0}, Landroid/app/Notification$StandardTemplateParams;->headerTextSecondary(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;

    .line 9767
    invoke-virtual {p1, v2}, Landroid/app/Notification$StandardTemplateParams;->summaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;

    goto :goto_9a

    .line 9770
    :cond_94
    invoke-virtual {p1, v2}, Landroid/app/Notification$StandardTemplateParams;->headerTextSecondary(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;

    .line 9771
    invoke-virtual {p1, v1}, Landroid/app/Notification$StandardTemplateParams;->summaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;

    .line 9773
    :goto_9a
    return-void
.end method

.method private static blacklist getBundleArrayForMessages(Ljava/util/List;ZI)[Landroid/os/Bundle;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;ZI)[",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 9685
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/os/Bundle;

    .line 9686
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 9687
    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_21

    .line 9688
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Notification$MessagingStyle$Message;

    .line 9689
    if-eqz p1, :cond_18

    .line 9690
    invoke-virtual {v3, p2}, Landroid/app/Notification$MessagingStyle$Message;->ensureColorContrastOrStripStyling(I)V

    .line 9692
    :cond_18
    invoke-virtual {v3}, Landroid/app/Notification$MessagingStyle$Message;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    aput-object v3, v0, v2

    .line 9687
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 9694
    :cond_21
    return-object v0
.end method

.method private blacklist getKey(Landroid/app/Person;)Ljava/lang/CharSequence;
    .registers 3

    .line 10056
    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_13

    .line 10057
    :cond_4
    invoke-virtual {p1}, Landroid/app/Person;->getKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    invoke-virtual {p1}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_13

    :cond_f
    invoke-virtual {p1}, Landroid/app/Person;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 10056
    :goto_13
    return-object p1
.end method

.method private blacklist getMessagingLayoutResource(ZZ)I
    .registers 4

    .line 10029
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 10032
    if-eqz p1, :cond_18

    .line 10033
    if-eqz p2, :cond_11

    .line 10034
    iget-object p1, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {p1}, Landroid/app/Notification$Builder;->-$$Nest$mgetCollapsedConversationLayoutResource(Landroid/app/Notification$Builder;)I

    move-result p1

    return p1

    .line 10036
    :cond_11
    iget-object p1, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {p1}, Landroid/app/Notification$Builder;->-$$Nest$mgetExpandedConversationLayoutResource(Landroid/app/Notification$Builder;)I

    move-result p1

    return p1

    .line 10039
    :cond_18
    if-eqz p2, :cond_21

    .line 10040
    iget-object p1, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {p1}, Landroid/app/Notification$Builder;->-$$Nest$mgetCollapsedMessagingLayoutResource(Landroid/app/Notification$Builder;)I

    move-result p1

    return p1

    .line 10042
    :cond_21
    iget-object p1, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {p1}, Landroid/app/Notification$Builder;->-$$Nest$mgetExpandedMessagingLayoutResource(Landroid/app/Notification$Builder;)I

    move-result p1

    return p1

    .line 10047
    :cond_28
    if-eqz p1, :cond_31

    .line 10048
    iget-object p1, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {p1}, Landroid/app/Notification$Builder;->-$$Nest$mgetConversationLayoutResource(Landroid/app/Notification$Builder;)I

    move-result p1

    goto :goto_40

    .line 10049
    :cond_31
    if-eqz p2, :cond_3a

    .line 10050
    iget-object p1, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {p1}, Landroid/app/Notification$Builder;->-$$Nest$mgetCollapsedMessagingLayoutResource(Landroid/app/Notification$Builder;)I

    move-result p1

    goto :goto_40

    .line 10051
    :cond_3a
    iget-object p1, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {p1}, Landroid/app/Notification$Builder;->-$$Nest$mgetExpandedMessagingLayoutResource(Landroid/app/Notification$Builder;)I

    move-result p1

    .line 10047
    :goto_40
    return p1
.end method

.method private blacklist getOtherPersonName()Ljava/lang/CharSequence;
    .registers 5

    .line 10061
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    invoke-direct {p0, v0}, Landroid/app/Notification$MessagingStyle;->getKey(Landroid/app/Person;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 10062
    iget-object v1, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_e
    if-ltz v1, :cond_30

    .line 10063
    iget-object v2, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Notification$MessagingStyle$Message;

    invoke-virtual {v2}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v2

    .line 10064
    if-eqz v2, :cond_2d

    invoke-direct {p0, v2}, Landroid/app/Notification$MessagingStyle;->getKey(Landroid/app/Person;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2d

    .line 10065
    invoke-virtual {v2}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 10062
    :cond_2d
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 10072
    :cond_30
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    invoke-virtual {v0}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_3e

    :cond_3d
    const/4 v0, 0x0

    :goto_3e
    return-object v0
.end method

.method private greylist-max-o hasOnlyWhiteSpaceSenders()Z
    .registers 4

    .line 10076
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_26

    .line 10077
    iget-object v2, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Notification$MessagingStyle$Message;

    .line 10078
    invoke-virtual {v2}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v2

    .line 10079
    if-eqz v2, :cond_23

    invoke-virtual {v2}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/app/Notification$MessagingStyle;->isWhiteSpace(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 10080
    return v0

    .line 10076
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 10083
    :cond_26
    const/4 v0, 0x1

    return v0
.end method

.method private greylist-max-o isWhiteSpace(Ljava/lang/CharSequence;)Z
    .registers 7

    .line 10087
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 10088
    return v1

    .line 10090
    :cond_8
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "^\\s*$"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 10091
    return v1

    .line 10095
    :cond_15
    const/4 v0, 0x0

    move v2, v0

    :goto_17
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_29

    .line 10096
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 10097
    const/16 v4, 0x200b

    if-eq v3, v4, :cond_26

    .line 10098
    return v0

    .line 10095
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 10101
    :cond_29
    return v1
.end method

.method private blacklist makeMessagingView(I)Landroid/widget/RemoteViews;
    .registers 16

    .line 9917
    sget v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_EXPANDED:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v1

    .line 9918
    :goto_9
    iget v3, p0, Landroid/app/Notification$MessagingStyle;->mConversationType:I

    if-eqz v3, :cond_f

    move v3, v2

    goto :goto_10

    :cond_f
    move v3, v1

    .line 9919
    :goto_10
    iget v4, p0, Landroid/app/Notification$MessagingStyle;->mConversationType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_17

    move v4, v2

    goto :goto_18

    :cond_17
    move v4, v1

    .line 9920
    :goto_18
    if-nez v3, :cond_1e

    if-eqz v0, :cond_1e

    move v5, v2

    goto :goto_1f

    :cond_1e
    move v5, v1

    .line 9924
    :goto_1f
    invoke-static {p0}, Landroid/app/Notification$Style;->-$$Nest$fgetmBigContentTitle(Landroid/app/Notification$Style;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2e

    .line 9925
    invoke-static {p0}, Landroid/app/Notification$Style;->-$$Nest$fgetmBigContentTitle(Landroid/app/Notification$Style;)Ljava/lang/CharSequence;

    move-result-object v6

    goto :goto_30

    .line 9926
    :cond_2e
    iget-object v6, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    .line 9927
    :goto_30
    iget-object v7, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v7}, Landroid/app/Notification$Builder;->-$$Nest$fgetmContext(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v8, 0x1c

    if-lt v7, v8, :cond_42

    move v7, v2

    goto :goto_43

    :cond_42
    move v7, v1

    .line 9930
    :goto_43
    nop

    .line 9931
    const/4 v8, 0x0

    if-nez v7, :cond_5a

    .line 9932
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    .line 9933
    invoke-direct {p0}, Landroid/app/Notification$MessagingStyle;->hasOnlyWhiteSpaceSenders()Z

    move-result v9

    if-eqz v9, :cond_57

    .line 9934
    nop

    .line 9935
    nop

    .line 9936
    move v9, v2

    move-object v7, v6

    move-object v6, v8

    goto :goto_61

    .line 9933
    :cond_57
    move v9, v7

    move-object v7, v8

    goto :goto_61

    .line 9939
    :cond_5a
    invoke-virtual {p0}, Landroid/app/Notification$MessagingStyle;->isGroupConversation()Z

    move-result v7

    xor-int/2addr v7, v2

    move v9, v7

    move-object v7, v8

    .line 9941
    :goto_61
    if-nez v5, :cond_69

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->notificationsRedesignTemplates()Z

    move-result v10

    if-eqz v10, :cond_75

    :cond_69
    if-eqz v9, :cond_75

    .line 9942
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_75

    .line 9943
    invoke-direct {p0}, Landroid/app/Notification$MessagingStyle;->getOtherPersonName()Ljava/lang/CharSequence;

    move-result-object v6

    .line 9946
    :cond_75
    iget-object v10, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v10}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v10

    invoke-static {v10}, Landroid/app/Notification;->-$$Nest$fgetmLargeIcon(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v10

    .line 9947
    new-instance v11, Landroid/app/Notification$TemplateBindResult;

    invoke-direct {v11, v8}, Landroid/app/Notification$TemplateBindResult;-><init>(Landroid/app/Notification-IA;)V

    .line 9948
    iget-object v12, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v12, v12, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v12}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v12

    .line 9949
    invoke-virtual {v12, p1}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object p1

    .line 9950
    invoke-virtual {p1, v3}, Landroid/app/Notification$StandardTemplateParams;->highlightExpander(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object p1

    .line 9951
    invoke-virtual {p1, v2}, Landroid/app/Notification$StandardTemplateParams;->hideProgress(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object p1

    .line 9952
    invoke-virtual {p1, v2}, Landroid/app/Notification$StandardTemplateParams;->hideLeftIcon(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object p1

    .line 9953
    invoke-virtual {p1, v2}, Landroid/app/Notification$StandardTemplateParams;->hideRightIcon(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object p1

    .line 9954
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->notificationsRedesignTemplates()Z

    move-result v12

    if-eqz v12, :cond_cc

    .line 9955
    iget-object v12, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_bf

    .line 9956
    iget-object v8, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->getLast()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/Notification$MessagingStyle$Message;

    invoke-static {v8}, Landroid/app/Notification$MessagingStyle$Message;->-$$Nest$fgetmText(Landroid/app/Notification$MessagingStyle$Message;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_c0

    :cond_bf
    nop

    .line 9958
    :goto_c0
    invoke-virtual {p1, v6}, Landroid/app/Notification$StandardTemplateParams;->title(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v12

    .line 9962
    invoke-virtual {v12, v8}, Landroid/app/Notification$StandardTemplateParams;->text(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v8

    .line 9963
    invoke-virtual {v8, v0}, Landroid/app/Notification$StandardTemplateParams;->hideAppName(Z)Landroid/app/Notification$StandardTemplateParams;

    .line 9964
    goto :goto_e0

    .line 9965
    :cond_cc
    if-eqz v5, :cond_d0

    move-object v12, v6

    goto :goto_d1

    :cond_d0
    move-object v12, v8

    :goto_d1
    invoke-virtual {p1, v12}, Landroid/app/Notification$StandardTemplateParams;->title(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v12

    .line 9966
    invoke-virtual {v12, v8}, Landroid/app/Notification$StandardTemplateParams;->text(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v12

    .line 9967
    if-eqz v5, :cond_dc

    goto :goto_dd

    :cond_dc
    move-object v8, v6

    :goto_dd
    invoke-virtual {v12, v8}, Landroid/app/Notification$StandardTemplateParams;->headerTextSecondary(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;

    .line 9969
    :goto_e0
    iget-object v8, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 9970
    invoke-direct {p0, v3, v0}, Landroid/app/Notification$MessagingStyle;->getMessagingLayoutResource(ZZ)I

    move-result v12

    .line 9969
    invoke-static {v8, v12, p1, v11}, Landroid/app/Notification$Builder;->-$$Nest$mapplyStandardTemplateWithActions(Landroid/app/Notification$Builder;ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v8

    .line 9973
    if-eqz v3, :cond_102

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->notificationsRedesignTemplates()Z

    move-result v11

    if-nez v11, :cond_102

    .line 9975
    iget-object v11, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    const v12, 0x10202b5

    invoke-static {v11, v8, v12, p1}, Landroid/app/Notification$Builder;->-$$Nest$msetTextViewColorPrimary(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    .line 9977
    iget-object v11, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    const v12, 0x1020216

    invoke-static {v11, v8, v12, p1}, Landroid/app/Notification$Builder;->-$$Nest$msetTextViewColorSecondary(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    .line 9980
    :cond_102
    iget-object v11, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v11}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v11

    iget-object v11, v11, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    iget-object v12, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v12, p1}, Landroid/app/Notification$Builder;->-$$Nest$mgetBackgroundColor(Landroid/app/Notification$Builder;Landroid/app/Notification$StandardTemplateParams;)I

    move-result v12

    invoke-virtual {p0, v11, v2, v12}, Landroid/app/Notification$MessagingStyle;->addExtras(Landroid/os/Bundle;ZI)V

    .line 9981
    iget-object v11, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 9982
    invoke-static {v11, p1}, Landroid/app/Notification$Builder;->-$$Nest$mgetSmallIconColor(Landroid/app/Notification$Builder;Landroid/app/Notification$StandardTemplateParams;)I

    move-result v11

    .line 9981
    const v12, 0x1020557

    const-string/jumbo v13, "setLayoutColor"

    invoke-virtual {v8, v12, v13, v11}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 9983
    iget-object v11, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 9984
    invoke-virtual {v11, p1}, Landroid/app/Notification$Builder;->getPrimaryTextColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result v11

    .line 9983
    const-string/jumbo v13, "setSenderTextColor"

    invoke-virtual {v8, v12, v13, v11}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 9985
    iget-object v11, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 9986
    invoke-virtual {v11, p1}, Landroid/app/Notification$Builder;->getSecondaryTextColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result v11

    .line 9985
    const-string/jumbo v13, "setMessageTextColor"

    invoke-virtual {v8, v12, v13, v11}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 9987
    iget-object v11, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 9989
    invoke-static {v11, p1}, Landroid/app/Notification$Builder;->-$$Nest$mgetBackgroundColor(Landroid/app/Notification$Builder;Landroid/app/Notification$StandardTemplateParams;)I

    move-result p1

    .line 9987
    const-string/jumbo v11, "setNotificationBackgroundColor"

    invoke-virtual {v8, v12, v11, p1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 9990
    const-string/jumbo p1, "setIsCollapsed"

    invoke-virtual {v8, v12, p1, v0}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 9992
    iget-object p1, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {p1}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object p1

    invoke-static {p1}, Landroid/app/Notification;->-$$Nest$fgetmLargeIcon(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object p1

    const-string/jumbo v11, "setAvatarReplacement"

    invoke-virtual {v8, v12, v11, p1}, Landroid/widget/RemoteViews;->setIcon(ILjava/lang/String;Landroid/graphics/drawable/Icon;)V

    .line 9994
    const-string/jumbo p1, "setNameReplacement"

    invoke-virtual {v8, v12, p1, v7}, Landroid/widget/RemoteViews;->setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V

    .line 9996
    const-string/jumbo p1, "setIsOneToOne"

    invoke-virtual {v8, v12, p1, v9}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 9998
    const-string/jumbo p1, "setConversationTitle"

    invoke-virtual {v8, v12, p1, v6}, Landroid/widget/RemoteViews;->setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V

    .line 10000
    if-eqz v3, :cond_17e

    .line 10001
    const-string/jumbo p1, "setShortcutIcon"

    iget-object v3, p0, Landroid/app/Notification$MessagingStyle;->mShortcutIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v8, v12, p1, v3}, Landroid/widget/RemoteViews;->setIcon(ILjava/lang/String;Landroid/graphics/drawable/Icon;)V

    .line 10003
    const-string/jumbo p1, "setIsImportantConversation"

    invoke-virtual {v8, v12, p1, v4}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 10006
    :cond_17e
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->notificationsRedesignTemplates()Z

    move-result p1

    if-eqz p1, :cond_19f

    if-nez v0, :cond_19f

    .line 10011
    iget-object p1, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {p1}, Landroid/app/Notification$Builder;->-$$Nest$fgetmContext(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 10012
    const v0, 0x105028c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 10014
    const/4 v0, 0x4

    int-to-float p1, p1

    const v3, 0x1020016

    invoke-virtual {v8, v3, v0, p1, v1}, Landroid/widget/RemoteViews;->setViewLayoutMargin(IIFI)V

    .line 10017
    :cond_19f
    if-eqz v5, :cond_1aa

    .line 10019
    const p1, 0x1020442

    const-string/jumbo v0, "setMaxDisplayedLines"

    invoke-virtual {v8, p1, v0, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 10021
    :cond_1aa
    const-string/jumbo p1, "setLargeIcon"

    invoke-virtual {v8, v12, p1, v10}, Landroid/widget/RemoteViews;->setIcon(ILjava/lang/String;Landroid/graphics/drawable/Icon;)V

    .line 10023
    iget-object p1, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {p1}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object p1

    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v0, "setData"

    invoke-virtual {v8, v12, v0, p1}, Landroid/widget/RemoteViews;->setBundle(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 10025
    return-object v8
.end method

.method private static blacklist reduceMessagesIconSizes(Ljava/util/List;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;I)V"
        }
    .end annotation

    .line 10230
    if-nez p0, :cond_3

    .line 10231
    return-void

    .line 10234
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Notification$MessagingStyle$Message;

    .line 10235
    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->-$$Nest$fgetmSender(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Person;

    move-result-object v0

    .line 10236
    if-eqz v0, :cond_22

    .line 10237
    invoke-virtual {v0}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 10238
    if-eqz v0, :cond_22

    .line 10239
    invoke-virtual {v0, p1, p1}, Landroid/graphics/drawable/Icon;->scaleDownIfNecessary(II)V

    .line 10242
    :cond_22
    goto :goto_7

    .line 10243
    :cond_23
    return-void
.end method

.method private blacklist showConversationTitle()Z
    .registers 3

    .line 9777
    const-string/jumbo v0, "persist.compact_heads_up_notification.show_conversation_title_for_group"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public greylist-max-o addExtras(Landroid/os/Bundle;)V
    .registers 3

    .line 9650
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->addExtras(Landroid/os/Bundle;)V

    .line 9651
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/app/Notification$MessagingStyle;->addExtras(Landroid/os/Bundle;ZI)V

    .line 9652
    return-void
.end method

.method public blacklist addExtras(Landroid/os/Bundle;ZI)V
    .registers 6

    .line 9658
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    if-eqz v0, :cond_16

    .line 9660
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    invoke-virtual {v0}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "android.selfDisplayName"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 9661
    const-string v0, "android.messagingUser"

    iget-object v1, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 9663
    :cond_16
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_21

    .line 9664
    const-string v0, "android.conversationTitle"

    iget-object v1, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 9666
    :cond_21
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_34

    .line 9667
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    .line 9668
    invoke-static {v0, p2, p3}, Landroid/app/Notification$MessagingStyle;->getBundleArrayForMessages(Ljava/util/List;ZI)[Landroid/os/Bundle;

    move-result-object v0

    .line 9667
    const-string v1, "android.messages"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 9670
    :cond_34
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_47

    .line 9671
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    invoke-static {v0, p2, p3}, Landroid/app/Notification$MessagingStyle;->getBundleArrayForMessages(Ljava/util/List;ZI)[Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "android.messages.historic"

    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 9674
    :cond_47
    iget-object p2, p0, Landroid/app/Notification$MessagingStyle;->mShortcutIcon:Landroid/graphics/drawable/Icon;

    if-eqz p2, :cond_52

    .line 9675
    const-string p2, "android.conversationIcon"

    iget-object p3, p0, Landroid/app/Notification$MessagingStyle;->mShortcutIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 9677
    :cond_52
    const-string p2, "android.conversationUnreadMessageCount"

    iget p3, p0, Landroid/app/Notification$MessagingStyle;->mUnreadMessageCount:I

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 9679
    invoke-direct {p0, p1}, Landroid/app/Notification$MessagingStyle;->fixTitleAndTextExtras(Landroid/os/Bundle;)V

    .line 9680
    const-string p2, "android.isGroupConversation"

    iget-boolean p3, p0, Landroid/app/Notification$MessagingStyle;->mIsGroupConversation:Z

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9681
    return-void
.end method

.method public whitelist addHistoricMessage(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Notification$MessagingStyle;
    .registers 3

    .line 9585
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9586
    iget-object p1, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0x19

    if-le p1, v0, :cond_15

    .line 9587
    iget-object p1, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 9589
    :cond_15
    return-object p0
.end method

.method public whitelist addMessage(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Notification$MessagingStyle;
    .registers 3

    .line 9564
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9565
    iget-object p1, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0x19

    if-le p1, v0, :cond_15

    .line 9566
    iget-object p1, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 9568
    :cond_15
    return-object p0
.end method

.method public whitelist addMessage(Ljava/lang/CharSequence;JLandroid/app/Person;)Landroid/app/Notification$MessagingStyle;
    .registers 6

    .line 9545
    new-instance v0, Landroid/app/Notification$MessagingStyle$Message;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/app/Notification$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLandroid/app/Person;)V

    invoke-virtual {p0, v0}, Landroid/app/Notification$MessagingStyle;->addMessage(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Notification$MessagingStyle;

    move-result-object p1

    return-object p1
.end method

.method public whitelist addMessage(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)Landroid/app/Notification$MessagingStyle;
    .registers 6

    .line 9526
    nop

    .line 9527
    if-nez p4, :cond_5

    const/4 p4, 0x0

    goto :goto_12

    :cond_5
    new-instance v0, Landroid/app/Person$Builder;

    invoke-direct {v0}, Landroid/app/Person$Builder;-><init>()V

    invoke-virtual {v0, p4}, Landroid/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroid/app/Person$Builder;

    move-result-object p4

    invoke-virtual {p4}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object p4

    .line 9526
    :goto_12
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/Notification$MessagingStyle;->addMessage(Ljava/lang/CharSequence;JLandroid/app/Person;)Landroid/app/Notification$MessagingStyle;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o areNotificationsVisiblyDifferent(Landroid/app/Notification$Style;)Z
    .registers 11

    .line 9828
    const/4 v0, 0x1

    if-eqz p1, :cond_c5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_f

    goto/16 :goto_c5

    .line 9831
    :cond_f
    check-cast p1, Landroid/app/Notification$MessagingStyle;

    .line 9832
    invoke-virtual {p0}, Landroid/app/Notification$MessagingStyle;->getMessages()Ljava/util/List;

    move-result-object v1

    .line 9833
    invoke-virtual {p1}, Landroid/app/Notification$MessagingStyle;->getMessages()Ljava/util/List;

    move-result-object p1

    .line 9835
    if-eqz v1, :cond_1d

    if-nez p1, :cond_22

    .line 9836
    :cond_1d
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9839
    :cond_22
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 9840
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_2d

    .line 9841
    return v0

    .line 9843
    :cond_2d
    const/4 v3, 0x0

    move v4, v3

    :goto_2f
    if-ge v4, v2, :cond_c4

    .line 9844
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Notification$MessagingStyle$Message;

    .line 9845
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Notification$MessagingStyle$Message;

    .line 9846
    nop

    .line 9847
    invoke-virtual {v5}, Landroid/app/Notification$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 9848
    invoke-virtual {v6}, Landroid/app/Notification$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 9846
    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_55

    .line 9849
    return v0

    .line 9851
    :cond_55
    invoke-virtual {v5}, Landroid/app/Notification$MessagingStyle$Message;->getDataUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6}, Landroid/app/Notification$MessagingStyle$Message;->getDataUri()Landroid/net/Uri;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_64

    .line 9852
    return v0

    .line 9854
    :cond_64
    invoke-virtual {v5}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v7

    if-nez v7, :cond_6f

    .line 9855
    invoke-virtual {v5}, Landroid/app/Notification$MessagingStyle$Message;->getSender()Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_77

    .line 9856
    :cond_6f
    invoke-virtual {v5}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v7

    .line 9854
    :goto_77
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 9857
    invoke-virtual {v6}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v8

    if-nez v8, :cond_86

    .line 9858
    invoke-virtual {v6}, Landroid/app/Notification$MessagingStyle$Message;->getSender()Ljava/lang/CharSequence;

    move-result-object v8

    goto :goto_8e

    .line 9859
    :cond_86
    invoke-virtual {v6}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v8

    .line 9857
    :goto_8e
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 9860
    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_99

    .line 9861
    return v0

    .line 9864
    :cond_99
    invoke-virtual {v5}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v7

    const/4 v8, 0x0

    if-nez v7, :cond_a2

    .line 9865
    move-object v5, v8

    goto :goto_aa

    :cond_a2
    invoke-virtual {v5}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Person;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 9866
    :goto_aa
    invoke-virtual {v6}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v7

    if-nez v7, :cond_b1

    .line 9867
    goto :goto_b9

    :cond_b1
    invoke-virtual {v6}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Person;->getKey()Ljava/lang/String;

    move-result-object v8

    .line 9868
    :goto_b9
    invoke-static {v5, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c0

    .line 9869
    return v0

    .line 9843
    :cond_c0
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2f

    .line 9873
    :cond_c4
    return v3

    .line 9829
    :cond_c5
    :goto_c5
    return v0
.end method

.method public whitelist getConversationTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 9454
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getConversationType()I
    .registers 2

    .line 9494
    iget v0, p0, Landroid/app/Notification$MessagingStyle;->mConversationType:I

    return v0
.end method

.method public greylist-max-o getHeadsUpStatusBarText()Ljava/lang/CharSequence;
    .registers 3

    .line 9398
    invoke-static {p0}, Landroid/app/Notification$Style;->-$$Nest$fgetmBigContentTitle(Landroid/app/Notification$Style;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 9399
    invoke-static {p0}, Landroid/app/Notification$Style;->-$$Nest$fgetmBigContentTitle(Landroid/app/Notification$Style;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_11

    .line 9400
    :cond_f
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    .line 9401
    :goto_11
    iget v1, p0, Landroid/app/Notification$MessagingStyle;->mConversationType:I

    if-nez v1, :cond_22

    .line 9402
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_22

    invoke-direct {p0}, Landroid/app/Notification$MessagingStyle;->hasOnlyWhiteSpaceSenders()Z

    move-result v1

    if-nez v1, :cond_22

    .line 9403
    return-object v0

    .line 9405
    :cond_22
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getHistoricMessages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;"
        }
    .end annotation

    .line 9603
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getMessages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;"
        }
    .end annotation

    .line 9596
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getShortcutIcon()Landroid/graphics/drawable/Icon;
    .registers 2

    .line 9475
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mShortcutIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public blacklist getUnreadMessageCount()I
    .registers 2

    .line 9499
    iget v0, p0, Landroid/app/Notification$MessagingStyle;->mUnreadMessageCount:I

    return v0
.end method

.method public whitelist getUser()Landroid/app/Person;
    .registers 2

    .line 9413
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    return-object v0
.end method

.method public whitelist getUserDisplayName()Ljava/lang/CharSequence;
    .registers 2

    .line 9422
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    invoke-virtual {v0}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist isGroupConversation()Z
    .registers 3

    .line 9636
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->-$$Nest$fgetmContext(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v0

    .line 9637
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_1c

    .line 9639
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0

    .line 9642
    :cond_1c
    iget-boolean v0, p0, Landroid/app/Notification$MessagingStyle;->mIsGroupConversation:Z

    return v0
.end method

.method public blacklist makeCompactHeadsUpContentView()Landroid/widget/RemoteViews;
    .registers 10

    .line 10118
    iget v0, p0, Landroid/app/Notification$MessagingStyle;->mConversationType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    .line 10119
    :goto_9
    nop

    .line 10120
    nop

    .line 10121
    const/4 v3, 0x0

    if-eqz v0, :cond_4e

    .line 10123
    iget-object v4, p0, Landroid/app/Notification$MessagingStyle;->mShortcutIcon:Landroid/graphics/drawable/Icon;

    .line 10129
    if-nez v4, :cond_26

    iget-boolean v5, p0, Landroid/app/Notification$MessagingStyle;->mIsGroupConversation:Z

    if-nez v5, :cond_26

    .line 10130
    invoke-direct {p0}, Landroid/app/Notification$MessagingStyle;->findLatestIncomingMessage()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v5

    .line 10131
    if-eqz v5, :cond_26

    .line 10132
    invoke-static {v5}, Landroid/app/Notification$MessagingStyle$Message;->-$$Nest$fgetmSender(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Person;

    move-result-object v5

    .line 10133
    if-eqz v5, :cond_26

    .line 10134
    invoke-virtual {v5}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    .line 10139
    :cond_26
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->compactHeadsUpNotificationReply()Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 10141
    iget-object v5, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 10142
    invoke-static {v5}, Landroid/app/Notification$Builder;->-$$Nest$mgetNonContextualActions(Landroid/app/Notification$Builder;)Ljava/util/List;

    move-result-object v5

    .line 10143
    move v6, v2

    :goto_33
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_4c

    .line 10144
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/Notification$Action;

    .line 10145
    iget-object v8, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v8, v7}, Landroid/app/Notification$Builder;->-$$Nest$mhasValidRemoteInput(Landroid/app/Notification$Builder;Landroid/app/Notification$Action;)Z

    move-result v8

    if-eqz v8, :cond_49

    .line 10146
    nop

    .line 10147
    goto :goto_50

    .line 10143
    :cond_49
    add-int/lit8 v6, v6, 0x1

    goto :goto_33

    .line 10153
    :cond_4c
    move-object v7, v3

    goto :goto_50

    .line 10121
    :cond_4e
    move-object v4, v3

    move-object v7, v4

    .line 10153
    :goto_50
    iget-object v5, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v5, v5, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v5}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v5

    sget v6, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_HEADS_UP:I

    .line 10154
    invoke-virtual {v5, v6}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v5

    .line 10155
    invoke-virtual {v5, v0}, Landroid/app/Notification$StandardTemplateParams;->highlightExpander(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    iget-object v5, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 10156
    invoke-virtual {v0, v5}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 10157
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->hideTime(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 10158
    invoke-virtual {v0, v2}, Landroid/app/Notification$StandardTemplateParams;->needsExtraTextMargin(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 10160
    invoke-direct {p0, v0}, Landroid/app/Notification$MessagingStyle;->fixTitleAndTextForCompactMessaging(Landroid/app/Notification$StandardTemplateParams;)V

    .line 10161
    new-instance v1, Landroid/app/Notification$TemplateBindResult;

    invoke-direct {v1, v3}, Landroid/app/Notification$TemplateBindResult;-><init>(Landroid/app/Notification-IA;)V

    .line 10163
    iget-object v3, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v5, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 10164
    invoke-static {v5}, Landroid/app/Notification$Builder;->-$$Nest$mgetMessagingCompactHeadsUpLayoutResource(Landroid/app/Notification$Builder;)I

    move-result v5

    .line 10163
    invoke-static {v3, v5, v0, v1}, Landroid/app/Notification$Builder;->-$$Nest$mapplyStandardTemplate(Landroid/app/Notification$Builder;ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 10165
    const v3, 0x1020351

    const/16 v5, 0x8

    invoke-virtual {v1, v3, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 10166
    const v3, 0x102034f

    invoke-virtual {v1, v3, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 10167
    const v3, 0x1020006

    const v6, 0x10202af

    if-eqz v4, :cond_aa

    .line 10168
    invoke-virtual {v1, v3, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 10169
    const v3, 0x10202aa

    invoke-virtual {v1, v3, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 10170
    invoke-virtual {v1, v6, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 10171
    invoke-virtual {v1, v6, v4}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    goto :goto_dd

    .line 10172
    :cond_aa
    iget-boolean v4, p0, Landroid/app/Notification$MessagingStyle;->mIsGroupConversation:Z

    if-eqz v4, :cond_dd

    .line 10173
    invoke-virtual {v1, v3, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 10174
    invoke-virtual {v1, v6, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 10175
    iget-object v3, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 10176
    invoke-static {v3, v0}, Landroid/app/Notification$Builder;->-$$Nest$mgetBackgroundColor(Landroid/app/Notification$Builder;Landroid/app/Notification$StandardTemplateParams;)I

    move-result v3

    .line 10175
    const v4, 0x1020557

    const-string/jumbo v6, "setNotificationBackgroundColor"

    invoke-virtual {v1, v4, v6, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 10177
    iget-object v3, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 10178
    invoke-static {v3, v0}, Landroid/app/Notification$Builder;->-$$Nest$mgetSmallIconColor(Landroid/app/Notification$Builder;Landroid/app/Notification$StandardTemplateParams;)I

    move-result v3

    .line 10177
    const-string/jumbo v6, "setLayoutColor"

    invoke-virtual {v1, v4, v6, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 10179
    iget-object v3, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v3}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v6, "setGroupFacePile"

    invoke-virtual {v1, v4, v6, v3}, Landroid/widget/RemoteViews;->setBundle(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 10183
    :cond_dd
    :goto_dd
    const v3, 0x10204c3

    if-eqz v7, :cond_108

    .line 10184
    invoke-virtual {v1, v3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 10186
    iget-object v4, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 10187
    invoke-static {v4, v7, v2, v0}, Landroid/app/Notification$Builder;->-$$Nest$mgenerateActionButton(Landroid/app/Notification$Builder;Landroid/app/Notification$Action;ZLandroid/app/Notification$StandardTemplateParams;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 10189
    const-string/jumbo v4, "setBackgroundResource"

    const v5, 0x10201d2

    invoke-virtual {v0, v5, v4, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 10190
    iget-object v2, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v2}, Landroid/app/Notification$Builder;->-$$Nest$fgetmContext(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v2

    .line 10191
    const v4, 0x1040714

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 10190
    invoke-virtual {v0, v5, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 10192
    invoke-virtual {v1, v3, v0}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 10193
    goto :goto_10b

    .line 10194
    :cond_108
    invoke-virtual {v1, v3, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 10196
    :goto_10b
    return-object v1
.end method

.method public blacklist makeContentView()Landroid/widget/RemoteViews;
    .registers 4

    .line 9813
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->-$$Nest$fgetmActions(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    .line 9815
    :try_start_6
    iget-object v1, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Landroid/app/Notification$Builder;->-$$Nest$fputmActions(Landroid/app/Notification$Builder;Ljava/util/ArrayList;)V

    .line 9816
    sget v1, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_NORMAL:I

    invoke-direct {p0, v1}, Landroid/app/Notification$MessagingStyle;->makeMessagingView(I)Landroid/widget/RemoteViews;

    move-result-object v1
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_1c

    .line 9818
    iget-object v2, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v2, v0}, Landroid/app/Notification$Builder;->-$$Nest$fputmActions(Landroid/app/Notification$Builder;Ljava/util/ArrayList;)V

    .line 9816
    return-object v1

    .line 9818
    :catchall_1c
    move-exception v1

    iget-object v2, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v2, v0}, Landroid/app/Notification$Builder;->-$$Nest$fputmActions(Landroid/app/Notification$Builder;Ljava/util/ArrayList;)V

    .line 9819
    throw v1
.end method

.method public blacklist makeExpandedContentView()Landroid/widget/RemoteViews;
    .registers 2

    .line 9905
    sget v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_EXPANDED:I

    invoke-direct {p0, v0}, Landroid/app/Notification$MessagingStyle;->makeMessagingView(I)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public blacklist makeHeadsUpContentView()Landroid/widget/RemoteViews;
    .registers 2

    .line 10109
    sget v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_HEADS_UP:I

    invoke-direct {p0, v0}, Landroid/app/Notification$MessagingStyle;->makeMessagingView(I)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public blacklist reduceImageSizes(Landroid/content/Context;)V
    .registers 5

    .line 10205
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->reduceImageSizes(Landroid/content/Context;)V

    .line 10206
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 10207
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    .line 10208
    iget-object v1, p0, Landroid/app/Notification$MessagingStyle;->mShortcutIcon:Landroid/graphics/drawable/Icon;

    if-eqz v1, :cond_22

    .line 10209
    nop

    .line 10210
    if-eqz v0, :cond_16

    const v1, 0x1050304

    goto :goto_19

    .line 10211
    :cond_16
    const v1, 0x1050303

    .line 10209
    :goto_19
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 10212
    iget-object v2, p0, Landroid/app/Notification$MessagingStyle;->mShortcutIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v2, v1, v1}, Landroid/graphics/drawable/Icon;->scaleDownIfNecessary(II)V

    .line 10215
    :cond_22
    nop

    .line 10216
    if-eqz v0, :cond_29

    const v0, 0x10502ec

    goto :goto_2c

    .line 10217
    :cond_29
    const v0, 0x10502eb

    .line 10215
    :goto_2c
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 10218
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    if-eqz v0, :cond_45

    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    invoke-virtual {v0}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 10219
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    invoke-virtual {v0}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {v0, p1, p1}, Landroid/graphics/drawable/Icon;->scaleDownIfNecessary(II)V

    .line 10222
    :cond_45
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-static {v0, p1}, Landroid/app/Notification$MessagingStyle;->reduceMessagesIconSizes(Ljava/util/List;I)V

    .line 10223
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    invoke-static {v0, p1}, Landroid/app/Notification$MessagingStyle;->reduceMessagesIconSizes(Ljava/util/List;I)V

    .line 10224
    return-void
.end method

.method protected greylist-max-o restoreFromExtras(Landroid/os/Bundle;)V
    .registers 4

    .line 9787
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->restoreFromExtras(Landroid/os/Bundle;)V

    .line 9789
    const-string v0, "android.messagingUser"

    const-class v1, Landroid/app/Person;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Person;

    .line 9790
    if-nez v0, :cond_25

    .line 9791
    const-string v0, "android.selfDisplayName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 9792
    new-instance v1, Landroid/app/Person$Builder;

    invoke-direct {v1}, Landroid/app/Person$Builder;-><init>()V

    invoke-virtual {v1, v0}, Landroid/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroid/app/Person$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    .line 9793
    goto :goto_27

    .line 9794
    :cond_25
    iput-object v0, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    .line 9796
    :goto_27
    const-string v0, "android.conversationTitle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    .line 9797
    const-string v0, "android.messages"

    const-class v1, Landroid/os/Bundle;

    invoke-static {p1, v0, v1}, Landroid/app/Notification;->-$$Nest$smgetParcelableArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)[Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, [Landroid/os/Bundle;

    .line 9798
    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    .line 9799
    const-string v0, "android.messages.historic"

    const-class v1, Landroid/os/Bundle;

    invoke-static {p1, v0, v1}, Landroid/app/Notification;->-$$Nest$smgetParcelableArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)[Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, [Landroid/os/Bundle;

    .line 9801
    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    .line 9802
    const-string v0, "android.isGroupConversation"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/Notification$MessagingStyle;->mIsGroupConversation:Z

    .line 9803
    const-string v0, "android.conversationUnreadMessageCount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$MessagingStyle;->mUnreadMessageCount:I

    .line 9804
    const-string v0, "android.conversationIcon"

    const-class v1, Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Icon;

    iput-object p1, p0, Landroid/app/Notification$MessagingStyle;->mShortcutIcon:Landroid/graphics/drawable/Icon;

    .line 9805
    return-void
.end method

.method public whitelist setConversationTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$MessagingStyle;
    .registers 2

    .line 9445
    iput-object p1, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    .line 9446
    return-object p0
.end method

.method public blacklist setConversationType(I)Landroid/app/Notification$MessagingStyle;
    .registers 2

    .line 9487
    iput p1, p0, Landroid/app/Notification$MessagingStyle;->mConversationType:I

    .line 9488
    return-object p0
.end method

.method public whitelist setGroupConversation(Z)Landroid/app/Notification$MessagingStyle;
    .registers 2

    .line 9616
    iput-boolean p1, p0, Landroid/app/Notification$MessagingStyle;->mIsGroupConversation:Z

    .line 9617
    return-object p0
.end method

.method public blacklist setShortcutIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$MessagingStyle;
    .registers 2

    .line 9463
    iput-object p1, p0, Landroid/app/Notification$MessagingStyle;->mShortcutIcon:Landroid/graphics/drawable/Icon;

    .line 9464
    return-object p0
.end method

.method public blacklist setUnreadMessageCount(I)Landroid/app/Notification$MessagingStyle;
    .registers 2

    .line 9504
    iput p1, p0, Landroid/app/Notification$MessagingStyle;->mUnreadMessageCount:I

    .line 9505
    return-object p0
.end method

.method public greylist-max-o validate(Landroid/content/Context;)V
    .registers 3

    .line 9383
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->validate(Landroid/content/Context;)V

    .line 9384
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v0, 0x1c

    if-lt p1, v0, :cond_22

    iget-object p1, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    if-eqz p1, :cond_1a

    iget-object p1, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    .line 9385
    invoke-virtual {p1}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_1a

    goto :goto_22

    .line 9386
    :cond_1a
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "User must be valid and have a name."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9388
    :cond_22
    :goto_22
    return-void
.end method
