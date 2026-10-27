.class public Landroid/app/servertransaction/StartActivityItem;
.super Landroid/app/servertransaction/ActivityLifecycleItem;
.source "StartActivityItem.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/StartActivityItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 74
    new-instance v0, Landroid/app/servertransaction/StartActivityItem$1;

    invoke-direct {v0}, Landroid/app/servertransaction/StartActivityItem$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/StartActivityItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/IBinder;Landroid/app/ActivityOptions$SceneTransitionInfo;)V
    .registers 3

    .line 42
    invoke-direct {p0, p1}, Landroid/app/servertransaction/ActivityLifecycleItem;-><init>(Landroid/os/IBinder;)V

    .line 43
    iput-object p2, p0, Landroid/app/servertransaction/StartActivityItem;->mSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    .line 44
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 70
    invoke-direct {p0, p1}, Landroid/app/servertransaction/ActivityLifecycleItem;-><init>(Landroid/os/Parcel;)V

    .line 71
    sget-object v0, Landroid/app/ActivityOptions$SceneTransitionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityOptions$SceneTransitionInfo;

    iput-object p1, p0, Landroid/app/servertransaction/StartActivityItem;->mSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    .line 72
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/servertransaction/StartActivityItem-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/servertransaction/StartActivityItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 86
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 87
    return v0

    .line 89
    :cond_4
    invoke-super {p0, p1}, Landroid/app/servertransaction/ActivityLifecycleItem;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 90
    return v2

    .line 92
    :cond_c
    check-cast p1, Landroid/app/servertransaction/StartActivityItem;

    .line 93
    iget-object v1, p0, Landroid/app/servertransaction/StartActivityItem;->mSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    if-nez v1, :cond_14

    move v1, v0

    goto :goto_15

    :cond_14
    move v1, v2

    :goto_15
    iget-object p1, p1, Landroid/app/servertransaction/StartActivityItem;->mSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    if-nez p1, :cond_1b

    move p1, v0

    goto :goto_1c

    :cond_1b
    move p1, v2

    :goto_1c
    if-ne v1, p1, :cond_1f

    goto :goto_20

    :cond_1f
    move v0, v2

    :goto_20
    return v0
.end method

.method public blacklist execute(Landroid/app/ClientTransactionHandler;Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;)V
    .registers 7

    .line 49
    const-string/jumbo v0, "startActivityItem"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 50
    iget-object v0, p0, Landroid/app/servertransaction/StartActivityItem;->mSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    invoke-virtual {p1, p2, p3, v0}, Landroid/app/ClientTransactionHandler;->handleStartActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;Landroid/app/ActivityOptions$SceneTransitionInfo;)V

    .line 51
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 52
    return-void
.end method

.method public blacklist getTargetState()I
    .registers 2

    .line 56
    const/4 v0, 0x2

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 98
    nop

    .line 99
    const/16 v0, 0x20f

    invoke-super {p0}, Landroid/app/servertransaction/ActivityLifecycleItem;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 100
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/app/servertransaction/StartActivityItem;->mSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    add-int/2addr v0, v1

    .line 101
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StartActivityItem{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Landroid/app/servertransaction/ActivityLifecycleItem;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",sceneTransitionInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/StartActivityItem;->mSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

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

    .line 64
    invoke-super {p0, p1, p2}, Landroid/app/servertransaction/ActivityLifecycleItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 65
    iget-object v0, p0, Landroid/app/servertransaction/StartActivityItem;->mSceneTransitionInfo:Landroid/app/ActivityOptions$SceneTransitionInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 66
    return-void
.end method
