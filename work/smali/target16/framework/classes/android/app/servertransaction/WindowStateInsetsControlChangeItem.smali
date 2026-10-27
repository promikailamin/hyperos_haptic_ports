.class public Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;
.super Landroid/app/servertransaction/WindowStateTransactionItem;
.source "WindowStateInsetsControlChangeItem.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "WindowStateInsetsControlChangeItem"


# instance fields
.field private final blacklist mActiveControls:Landroid/view/InsetsSourceControl$Array;

.field private final blacklist mInsetsState:Landroid/view/InsetsState;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 114
    new-instance v0, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem$1;

    invoke-direct {v0}, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 109
    invoke-direct {p0, p1}, Landroid/app/servertransaction/WindowStateTransactionItem;-><init>(Landroid/os/Parcel;)V

    .line 110
    sget-object v0, Landroid/view/InsetsState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InsetsState;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InsetsState;

    iput-object v0, p0, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;->mInsetsState:Landroid/view/InsetsState;

    .line 111
    sget-object v0, Landroid/view/InsetsSourceControl$Array;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/InsetsSourceControl$Array;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/InsetsSourceControl$Array;

    iput-object p1, p0, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;->mActiveControls:Landroid/view/InsetsSourceControl$Array;

    .line 112
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/servertransaction/WindowStateInsetsControlChangeItem-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/IWindow;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;)V
    .registers 5

    .line 53
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;-><init>(Landroid/view/IWindow;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;Z)V

    .line 54
    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/IWindow;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;Z)V
    .registers 6

    .line 60
    invoke-direct {p0, p1}, Landroid/app/servertransaction/WindowStateTransactionItem;-><init>(Landroid/view/IWindow;)V

    .line 61
    new-instance p1, Landroid/view/InsetsState;

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;Z)V

    iput-object p1, p0, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;->mInsetsState:Landroid/view/InsetsState;

    .line 62
    if-eqz p4, :cond_1a

    .line 63
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/InsetsSourceControl$Array;

    invoke-static {p1}, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;->copy(Landroid/view/InsetsSourceControl$Array;)Landroid/view/InsetsSourceControl$Array;

    move-result-object p1

    iput-object p1, p0, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;->mActiveControls:Landroid/view/InsetsSourceControl$Array;

    goto :goto_22

    .line 65
    :cond_1a
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/InsetsSourceControl$Array;

    iput-object p1, p0, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;->mActiveControls:Landroid/view/InsetsSourceControl$Array;

    .line 67
    :goto_22
    return-void
.end method

.method private static blacklist copy(Landroid/view/InsetsSourceControl$Array;)Landroid/view/InsetsSourceControl$Array;
    .registers 3

    .line 71
    new-instance v0, Landroid/view/InsetsSourceControl$Array;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/view/InsetsSourceControl$Array;-><init>(Landroid/view/InsetsSourceControl$Array;Z)V

    .line 76
    invoke-virtual {v0, v1}, Landroid/view/InsetsSourceControl$Array;->setParcelableFlags(I)V

    .line 77
    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 127
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 128
    return v0

    .line 130
    :cond_4
    invoke-super {p0, p1}, Landroid/app/servertransaction/WindowStateTransactionItem;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 131
    return v2

    .line 133
    :cond_c
    check-cast p1, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;

    .line 134
    iget-object v1, p0, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;->mInsetsState:Landroid/view/InsetsState;

    iget-object v3, p1, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;->mInsetsState:Landroid/view/InsetsState;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object v1, p0, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;->mActiveControls:Landroid/view/InsetsSourceControl$Array;

    iget-object p1, p1, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;->mActiveControls:Landroid/view/InsetsSourceControl$Array;

    .line 135
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    goto :goto_24

    :cond_23
    move v0, v2

    .line 134
    :goto_24
    return v0
.end method

.method public blacklist execute(Landroid/app/ClientTransactionHandler;Landroid/view/IWindow;Landroid/app/servertransaction/PendingTransactionActions;)V
    .registers 6

    .line 83
    const-string/jumbo p1, "windowInsetsControlChanged"

    const-wide/16 v0, 0x20

    invoke-static {v0, v1, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 85
    :try_start_8
    iget-object p1, p0, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;->mInsetsState:Landroid/view/InsetsState;

    iget-object p3, p0, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;->mActiveControls:Landroid/view/InsetsSourceControl$Array;

    invoke-interface {p2, p1, p3}, Landroid/view/IWindow;->insetsControlChanged(Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_10

    .line 93
    goto :goto_1d

    .line 86
    :catch_10
    move-exception p1

    .line 90
    const-string p2, "WindowStateInsetsControlChangeItem"

    const-string p3, "The original window no longer exists in the new process"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    iget-object p1, p0, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;->mActiveControls:Landroid/view/InsetsSourceControl$Array;

    invoke-virtual {p1}, Landroid/view/InsetsSourceControl$Array;->release()V

    .line 94
    :goto_1d
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 95
    return-void
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 140
    nop

    .line 141
    const/16 v0, 0x20f

    invoke-super {p0}, Landroid/app/servertransaction/WindowStateTransactionItem;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 142
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;->mInsetsState:Landroid/view/InsetsState;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 143
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;->mActiveControls:Landroid/view/InsetsSourceControl$Array;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 144
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowStateInsetsControlChangeItem{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Landroid/app/servertransaction/WindowStateTransactionItem;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 102
    invoke-super {p0, p1, p2}, Landroid/app/servertransaction/WindowStateTransactionItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 103
    iget-object v0, p0, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;->mInsetsState:Landroid/view/InsetsState;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 104
    iget-object v0, p0, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;->mActiveControls:Landroid/view/InsetsSourceControl$Array;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 105
    return-void
.end method
