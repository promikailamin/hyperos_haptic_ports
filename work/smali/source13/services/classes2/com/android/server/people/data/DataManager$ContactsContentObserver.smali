.class Lcom/android/server/people/data/DataManager$ContactsContentObserver;
.super Landroid/database/ContentObserver;
.source "DataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/people/data/DataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactsContentObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;
    }
.end annotation


# instance fields
.field private mLastUpdatedTimestamp:J

.field final synthetic this$0:Lcom/android/server/people/data/DataManager;


# direct methods
.method private constructor <init>(Lcom/android/server/people/data/DataManager;Landroid/os/Handler;)V
    .registers 5
    .param p2, "handler"    # Landroid/os/Handler;

    .line 968
    iput-object p1, p0, Lcom/android/server/people/data/DataManager$ContactsContentObserver;->this$0:Lcom/android/server/people/data/DataManager;

    .line 969
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 970
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/people/data/DataManager$ContactsContentObserver;->mLastUpdatedTimestamp:J

    .line 971
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/people/data/DataManager;Landroid/os/Handler;Lcom/android/server/people/data/DataManager$ContactsContentObserver-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/people/data/DataManager$ContactsContentObserver;-><init>(Lcom/android/server/people/data/DataManager;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic lambda$onChange$0(Landroid/net/Uri;Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;Lcom/android/server/people/data/PackageData;)V
    .registers 5
    .param p0, "contactUri"    # Landroid/net/Uri;
    .param p1, "conversationSelector"    # Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;
    .param p2, "packageData"    # Lcom/android/server/people/data/PackageData;

    .line 987
    nop

    .line 988
    invoke-virtual {p2}, Lcom/android/server/people/data/PackageData;->getConversationStore()Lcom/android/server/people/data/ConversationStore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/people/data/ConversationStore;->getConversationByContactUri(Landroid/net/Uri;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v0

    .line 989
    .local v0, "ci":Lcom/android/server/people/data/ConversationInfo;
    if-eqz v0, :cond_1d

    .line 990
    nop

    .line 991
    invoke-virtual {p2}, Lcom/android/server/people/data/PackageData;->getConversationStore()Lcom/android/server/people/data/ConversationStore;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;->-$$Nest$fputmConversationStore(Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;Lcom/android/server/people/data/ConversationStore;)V

    .line 992
    invoke-static {p1, v0}, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;->-$$Nest$fputmConversationInfo(Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;Lcom/android/server/people/data/ConversationInfo;)V

    .line 993
    invoke-virtual {p2}, Lcom/android/server/people/data/PackageData;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;->-$$Nest$fputmPackageName(Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;Ljava/lang/String;)V

    .line 995
    :cond_1d
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .registers 13
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .line 975
    iget-object v0, p0, Lcom/android/server/people/data/DataManager$ContactsContentObserver;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-static {v0}, Lcom/android/server/people/data/DataManager;->-$$Nest$fgetmInjector(Lcom/android/server/people/data/DataManager;)Lcom/android/server/people/data/DataManager$Injector;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/people/data/DataManager$ContactsContentObserver;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-static {v1}, Lcom/android/server/people/data/DataManager;->-$$Nest$fgetmContext(Lcom/android/server/people/data/DataManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/people/data/DataManager$Injector;->createContactsQueryHelper(Landroid/content/Context;)Lcom/android/server/people/data/ContactsQueryHelper;

    move-result-object v0

    .line 976
    .local v0, "helper":Lcom/android/server/people/data/ContactsQueryHelper;
    iget-wide v1, p0, Lcom/android/server/people/data/DataManager$ContactsContentObserver;->mLastUpdatedTimestamp:J

    invoke-virtual {v0, v1, v2}, Lcom/android/server/people/data/ContactsQueryHelper;->querySince(J)Z

    move-result v1

    if-nez v1, :cond_19

    .line 977
    return-void

    .line 979
    :cond_19
    invoke-virtual {v0}, Lcom/android/server/people/data/ContactsQueryHelper;->getContactUri()Landroid/net/Uri;

    move-result-object v1

    .line 981
    .local v1, "contactUri":Landroid/net/Uri;
    new-instance v2, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;-><init>(Lcom/android/server/people/data/DataManager$ContactsContentObserver;Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector-IA;)V

    .line 982
    .local v2, "conversationSelector":Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;
    iget-object v3, p0, Lcom/android/server/people/data/DataManager$ContactsContentObserver;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-static {v3, p3}, Lcom/android/server/people/data/DataManager;->-$$Nest$mgetUnlockedUserData(Lcom/android/server/people/data/DataManager;I)Lcom/android/server/people/data/UserData;

    move-result-object v3

    .line 983
    .local v3, "userData":Lcom/android/server/people/data/UserData;
    if-nez v3, :cond_2c

    .line 984
    return-void

    .line 986
    :cond_2c
    new-instance v4, Lcom/android/server/people/data/DataManager$ContactsContentObserver$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1, v2}, Lcom/android/server/people/data/DataManager$ContactsContentObserver$$ExternalSyntheticLambda0;-><init>(Landroid/net/Uri;Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;)V

    invoke-virtual {v3, v4}, Lcom/android/server/people/data/UserData;->forAllPackages(Ljava/util/function/Consumer;)V

    .line 996
    invoke-static {v2}, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;->-$$Nest$fgetmConversationInfo(Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v4

    if-nez v4, :cond_3b

    .line 997
    return-void

    .line 1000
    :cond_3b
    new-instance v4, Lcom/android/server/people/data/ConversationInfo$Builder;

    invoke-static {v2}, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;->-$$Nest$fgetmConversationInfo(Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;)Lcom/android/server/people/data/ConversationInfo;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/server/people/data/ConversationInfo$Builder;-><init>(Lcom/android/server/people/data/ConversationInfo;)V

    .line 1002
    .local v4, "builder":Lcom/android/server/people/data/ConversationInfo$Builder;
    invoke-virtual {v0}, Lcom/android/server/people/data/ContactsQueryHelper;->isStarred()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/people/data/ConversationInfo$Builder;->setContactStarred(Z)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 1003
    invoke-virtual {v0}, Lcom/android/server/people/data/ContactsQueryHelper;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/people/data/ConversationInfo$Builder;->setContactPhoneNumber(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 1004
    iget-object v5, p0, Lcom/android/server/people/data/DataManager$ContactsContentObserver;->this$0:Lcom/android/server/people/data/DataManager;

    invoke-static {v2}, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;->-$$Nest$fgetmConversationStore(Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;)Lcom/android/server/people/data/ConversationStore;

    move-result-object v6

    .line 1005
    invoke-virtual {v4}, Lcom/android/server/people/data/ConversationInfo$Builder;->build()Lcom/android/server/people/data/ConversationInfo;

    move-result-object v7

    invoke-static {v2}, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;->-$$Nest$fgetmPackageName(Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;)Ljava/lang/String;

    move-result-object v8

    .line 1004
    invoke-virtual {v5, v6, v7, v8, p3}, Lcom/android/server/people/data/DataManager;->updateConversationStoreThenNotifyListeners(Lcom/android/server/people/data/ConversationStore;Lcom/android/server/people/data/ConversationInfo;Ljava/lang/String;I)V

    .line 1007
    invoke-virtual {v0}, Lcom/android/server/people/data/ContactsQueryHelper;->getLastUpdatedTimestamp()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/people/data/DataManager$ContactsContentObserver;->mLastUpdatedTimestamp:J

    .line 1008
    return-void
.end method
