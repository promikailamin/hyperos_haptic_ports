.class public Landroid/content/pm/KeySet;
.super Ljava/lang/Object;
.source "KeySet.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/KeySet;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o token:Landroid/os/IBinder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smreadFromParcel(Landroid/os/Parcel;)Landroid/content/pm/KeySet;
    .registers 1

    invoke-static {p0}, Landroid/content/pm/KeySet;->readFromParcel(Landroid/os/Parcel;)Landroid/content/pm/KeySet;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 67
    new-instance v0, Landroid/content/pm/KeySet$1;

    invoke-direct {v0}, Landroid/content/pm/KeySet$1;-><init>()V

    sput-object v0, Landroid/content/pm/KeySet;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/IBinder;)V
    .registers 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    if-eqz p1, :cond_8

    .line 39
    iput-object p1, p0, Landroid/content/pm/KeySet;->token:Landroid/os/IBinder;

    .line 40
    return-void

    .line 37
    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "null value for KeySet IBinder token"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static greylist-max-o readFromParcel(Landroid/os/Parcel;)Landroid/content/pm/KeySet;
    .registers 2

    .line 91
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p0

    .line 92
    new-instance v0, Landroid/content/pm/KeySet;

    invoke-direct {v0, p0}, Landroid/content/pm/KeySet;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4

    .line 50
    instance-of v0, p1, Landroid/content/pm/KeySet;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 51
    check-cast p1, Landroid/content/pm/KeySet;

    .line 52
    iget-object v0, p0, Landroid/content/pm/KeySet;->token:Landroid/os/IBinder;

    iget-object p1, p1, Landroid/content/pm/KeySet;->token:Landroid/os/IBinder;

    if-ne v0, p1, :cond_e

    const/4 v1, 0x1

    :cond_e
    return v1

    .line 54
    :cond_f
    return v1
.end method

.method public greylist-max-o getToken()Landroid/os/IBinder;
    .registers 2

    .line 44
    iget-object v0, p0, Landroid/content/pm/KeySet;->token:Landroid/os/IBinder;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 60
    iget-object v0, p0, Landroid/content/pm/KeySet;->token:Landroid/os/IBinder;

    invoke-interface {v0}, Landroid/os/IBinder;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 100
    iget-object p2, p0, Landroid/content/pm/KeySet;->token:Landroid/os/IBinder;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 101
    return-void
.end method
