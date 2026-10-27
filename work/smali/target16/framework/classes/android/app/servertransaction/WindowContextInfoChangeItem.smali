.class public Landroid/app/servertransaction/WindowContextInfoChangeItem;
.super Landroid/app/servertransaction/ClientTransactionItem;
.source "WindowContextInfoChangeItem.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/WindowContextInfoChangeItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mClientToken:Landroid/os/IBinder;

.field private final blacklist mInfo:Landroid/window/WindowContextInfo;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 71
    new-instance v0, Landroid/app/servertransaction/WindowContextInfoChangeItem$1;

    invoke-direct {v0}, Landroid/app/servertransaction/WindowContextInfoChangeItem$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/WindowContextInfoChangeItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/IBinder;Landroid/content/res/Configuration;I)V
    .registers 5

    .line 45
    invoke-direct {p0}, Landroid/app/servertransaction/ClientTransactionItem;-><init>()V

    .line 46
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;

    iput-object p1, p0, Landroid/app/servertransaction/WindowContextInfoChangeItem;->mClientToken:Landroid/os/IBinder;

    .line 47
    new-instance p1, Landroid/window/WindowContextInfo;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-direct {p1, v0, p3}, Landroid/window/WindowContextInfo;-><init>(Landroid/content/res/Configuration;I)V

    iput-object p1, p0, Landroid/app/servertransaction/WindowContextInfoChangeItem;->mInfo:Landroid/window/WindowContextInfo;

    .line 48
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 66
    invoke-direct {p0}, Landroid/app/servertransaction/ClientTransactionItem;-><init>()V

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/app/servertransaction/WindowContextInfoChangeItem;->mClientToken:Landroid/os/IBinder;

    .line 68
    sget-object v0, Landroid/window/WindowContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/window/WindowContextInfo;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/window/WindowContextInfo;

    iput-object p1, p0, Landroid/app/servertransaction/WindowContextInfoChangeItem;->mInfo:Landroid/window/WindowContextInfo;

    .line 69
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/servertransaction/WindowContextInfoChangeItem-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/servertransaction/WindowContextInfoChangeItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 84
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 85
    return v0

    .line 87
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2b

    .line 90
    :cond_12
    check-cast p1, Landroid/app/servertransaction/WindowContextInfoChangeItem;

    .line 91
    iget-object v2, p0, Landroid/app/servertransaction/WindowContextInfoChangeItem;->mClientToken:Landroid/os/IBinder;

    iget-object v3, p1, Landroid/app/servertransaction/WindowContextInfoChangeItem;->mClientToken:Landroid/os/IBinder;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Landroid/app/servertransaction/WindowContextInfoChangeItem;->mInfo:Landroid/window/WindowContextInfo;

    iget-object p1, p1, Landroid/app/servertransaction/WindowContextInfoChangeItem;->mInfo:Landroid/window/WindowContextInfo;

    .line 92
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    goto :goto_2a

    :cond_29
    move v0, v1

    .line 91
    :goto_2a
    return v0

    .line 88
    :cond_2b
    :goto_2b
    return v1
.end method

.method public blacklist execute(Landroid/app/ClientTransactionHandler;Landroid/app/servertransaction/PendingTransactionActions;)V
    .registers 4

    .line 53
    iget-object p2, p0, Landroid/app/servertransaction/WindowContextInfoChangeItem;->mClientToken:Landroid/os/IBinder;

    iget-object v0, p0, Landroid/app/servertransaction/WindowContextInfoChangeItem;->mInfo:Landroid/window/WindowContextInfo;

    invoke-virtual {p1, p2, v0}, Landroid/app/ClientTransactionHandler;->handleWindowContextInfoChanged(Landroid/os/IBinder;Landroid/window/WindowContextInfo;)V

    .line 54
    return-void
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 97
    nop

    .line 98
    iget-object v0, p0, Landroid/app/servertransaction/WindowContextInfoChangeItem;->mClientToken:Landroid/os/IBinder;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    .line 99
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroid/app/servertransaction/WindowContextInfoChangeItem;->mInfo:Landroid/window/WindowContextInfo;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    .line 100
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowContextInfoChangeItem{clientToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/WindowContextInfoChangeItem;->mClientToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/WindowContextInfoChangeItem;->mInfo:Landroid/window/WindowContextInfo;

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
    .registers 4

    .line 61
    iget-object v0, p0, Landroid/app/servertransaction/WindowContextInfoChangeItem;->mClientToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 62
    iget-object v0, p0, Landroid/app/servertransaction/WindowContextInfoChangeItem;->mInfo:Landroid/window/WindowContextInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 63
    return-void
.end method
