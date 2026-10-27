.class public final Landroid/app/contextualsearch/CallbackToken;
.super Ljava/lang/Object;
.source "CallbackToken.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/contextualsearch/CallbackToken$CallbackWrapper;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/contextualsearch/CallbackToken;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mToken:Landroid/os/IBinder;

.field private blacklist mTokenUsed:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 50
    const-class v0, Landroid/app/contextualsearch/CallbackToken;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/contextualsearch/CallbackToken;->TAG:Ljava/lang/String;

    .line 133
    new-instance v0, Landroid/app/contextualsearch/CallbackToken$1;

    invoke-direct {v0}, Landroid/app/contextualsearch/CallbackToken$1;-><init>()V

    sput-object v0, Landroid/app/contextualsearch/CallbackToken;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/contextualsearch/CallbackToken;->mLock:Ljava/lang/Object;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/contextualsearch/CallbackToken;->mTokenUsed:Z

    .line 57
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/app/contextualsearch/CallbackToken;->mToken:Landroid/os/IBinder;

    .line 58
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/contextualsearch/CallbackToken;->mLock:Ljava/lang/Object;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/contextualsearch/CallbackToken;->mTokenUsed:Z

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Landroid/app/contextualsearch/CallbackToken;->mToken:Landroid/os/IBinder;

    .line 62
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/contextualsearch/CallbackToken-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/contextualsearch/CallbackToken;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist markUsedLocked()Z
    .registers 3

    .line 106
    iget-boolean v0, p0, Landroid/app/contextualsearch/CallbackToken;->mTokenUsed:Z

    .line 107
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/contextualsearch/CallbackToken;->mTokenUsed:Z

    .line 108
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getContextualSearchState(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/app/contextualsearch/ContextualSearchState;",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Landroid/app/contextualsearch/CallbackToken;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 82
    :try_start_3
    invoke-direct {p0}, Landroid/app/contextualsearch/CallbackToken;->markUsedLocked()Z

    move-result v1

    .line 83
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_39

    .line 84
    if-eqz v1, :cond_15

    .line 85
    new-instance p1, Ljava/lang/IllegalAccessException;

    const-string v0, "Token already used."

    invoke-direct {p1, v0}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    .line 86
    return-void

    .line 90
    :cond_15
    :try_start_15
    const-string v0, "contextual_search"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 91
    invoke-static {v0}, Landroid/app/contextualsearch/IContextualSearchManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/contextualsearch/IContextualSearchManager;

    move-result-object v0

    .line 92
    new-instance v1, Landroid/app/contextualsearch/CallbackToken$CallbackWrapper;

    invoke-direct {v1, p1, p2}, Landroid/app/contextualsearch/CallbackToken$CallbackWrapper;-><init>(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 94
    if-eqz v0, :cond_2c

    .line 95
    iget-object p1, p0, Landroid/app/contextualsearch/CallbackToken;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, p1, v1}, Landroid/app/contextualsearch/IContextualSearchManager;->getContextualSearchState(Landroid/os/IBinder;Landroid/app/contextualsearch/IContextualSearchCallback;)V

    goto :goto_33

    .line 97
    :cond_2c
    sget-object p1, Landroid/app/contextualsearch/CallbackToken;->TAG:Ljava/lang/String;

    const-string p2, "Failed to getContextualSearchState. Service null."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_33} :catch_34

    .line 102
    :goto_33
    goto :goto_38

    .line 99
    :catch_34
    move-exception p1

    .line 101
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 103
    :goto_38
    return-void

    .line 83
    :catchall_39
    move-exception p1

    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw p1
.end method

.method public blacklist getToken()Landroid/os/IBinder;
    .registers 2

    .line 119
    iget-object v0, p0, Landroid/app/contextualsearch/CallbackToken;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 129
    iget-object p2, p0, Landroid/app/contextualsearch/CallbackToken;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 130
    return-void
.end method
