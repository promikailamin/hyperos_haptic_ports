.class Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;
.super Ljava/lang/Object;
.source "DataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/people/data/DataManager$ContactsContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConversationSelector"
.end annotation


# instance fields
.field private mConversationInfo:Lcom/android/server/people/data/ConversationInfo;

.field private mConversationStore:Lcom/android/server/people/data/ConversationStore;

.field private mPackageName:Ljava/lang/String;

.field final synthetic this$1:Lcom/android/server/people/data/DataManager$ContactsContentObserver;


# direct methods
.method static bridge synthetic -$$Nest$fgetmConversationInfo(Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;)Lcom/android/server/people/data/ConversationInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;->mConversationInfo:Lcom/android/server/people/data/ConversationInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConversationStore(Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;)Lcom/android/server/people/data/ConversationStore;
    .registers 1

    iget-object p0, p0, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPackageName(Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmConversationInfo(Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;Lcom/android/server/people/data/ConversationInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;->mConversationInfo:Lcom/android/server/people/data/ConversationInfo;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmConversationStore(Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;Lcom/android/server/people/data/ConversationStore;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPackageName(Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/android/server/people/data/DataManager$ContactsContentObserver;)V
    .registers 2

    .line 1010
    iput-object p1, p0, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;->this$1:Lcom/android/server/people/data/DataManager$ContactsContentObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1011
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    .line 1012
    iput-object p1, p0, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;->mConversationInfo:Lcom/android/server/people/data/ConversationInfo;

    .line 1013
    iput-object p1, p0, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/people/data/DataManager$ContactsContentObserver;Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;-><init>(Lcom/android/server/people/data/DataManager$ContactsContentObserver;)V

    return-void
.end method
