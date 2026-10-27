.class public Landroid/app/servertransaction/WindowContextWindowRemovalItem;
.super Landroid/app/servertransaction/ClientTransactionItem;
.source "WindowContextWindowRemovalItem.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/WindowContextWindowRemovalItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mClientToken:Landroid/os/IBinder;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 62
    new-instance v0, Landroid/app/servertransaction/WindowContextWindowRemovalItem$1;

    invoke-direct {v0}, Landroid/app/servertransaction/WindowContextWindowRemovalItem$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/WindowContextWindowRemovalItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 39
    invoke-direct {p0}, Landroid/app/servertransaction/ClientTransactionItem;-><init>()V

    .line 40
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;

    iput-object p1, p0, Landroid/app/servertransaction/WindowContextWindowRemovalItem;->mClientToken:Landroid/os/IBinder;

    .line 41
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 58
    invoke-direct {p0}, Landroid/app/servertransaction/ClientTransactionItem;-><init>()V

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Landroid/app/servertransaction/WindowContextWindowRemovalItem;->mClientToken:Landroid/os/IBinder;

    .line 60
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/servertransaction/WindowContextWindowRemovalItem-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/servertransaction/WindowContextWindowRemovalItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4

    .line 74
    if-ne p0, p1, :cond_4

    .line 75
    const/4 p1, 0x1

    return p1

    .line 77
    :cond_4
    if-eqz p1, :cond_1c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1c

    .line 80
    :cond_11
    check-cast p1, Landroid/app/servertransaction/WindowContextWindowRemovalItem;

    .line 81
    iget-object v0, p0, Landroid/app/servertransaction/WindowContextWindowRemovalItem;->mClientToken:Landroid/os/IBinder;

    iget-object p1, p1, Landroid/app/servertransaction/WindowContextWindowRemovalItem;->mClientToken:Landroid/os/IBinder;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 78
    :cond_1c
    :goto_1c
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist execute(Landroid/app/ClientTransactionHandler;Landroid/app/servertransaction/PendingTransactionActions;)V
    .registers 3

    .line 46
    iget-object p2, p0, Landroid/app/servertransaction/WindowContextWindowRemovalItem;->mClientToken:Landroid/os/IBinder;

    invoke-virtual {p1, p2}, Landroid/app/ClientTransactionHandler;->handleWindowContextWindowRemoval(Landroid/os/IBinder;)V

    .line 47
    return-void
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 86
    nop

    .line 87
    iget-object v0, p0, Landroid/app/servertransaction/WindowContextWindowRemovalItem;->mClientToken:Landroid/os/IBinder;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    .line 88
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowContextWindowRemovalItem{clientToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/WindowContextWindowRemovalItem;->mClientToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 54
    iget-object p2, p0, Landroid/app/servertransaction/WindowContextWindowRemovalItem;->mClientToken:Landroid/os/IBinder;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 55
    return-void
.end method
