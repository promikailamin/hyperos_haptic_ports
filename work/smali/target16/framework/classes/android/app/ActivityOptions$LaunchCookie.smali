.class public final Landroid/app/ActivityOptions$LaunchCookie;
.super Ljava/lang/Object;
.source "ActivityOptions.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LaunchCookie"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/ActivityOptions$LaunchCookie;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist binder:Landroid/os/IBinder;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 2238
    new-instance v0, Landroid/app/ActivityOptions$LaunchCookie$1;

    invoke-direct {v0}, Landroid/app/ActivityOptions$LaunchCookie$1;-><init>()V

    sput-object v0, Landroid/app/ActivityOptions$LaunchCookie;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 2187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2188
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityOptions$LaunchCookie;->binder:Landroid/os/IBinder;

    .line 2189
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 2196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2197
    iput-object p1, p0, Landroid/app/ActivityOptions$LaunchCookie;->binder:Landroid/os/IBinder;

    .line 2198
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3

    .line 2192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2193
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0, p1}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/app/ActivityOptions$LaunchCookie;->binder:Landroid/os/IBinder;

    .line 2194
    return-void
.end method

.method public static blacklist readFromParcel(Landroid/os/Parcel;)Landroid/app/ActivityOptions$LaunchCookie;
    .registers 2

    .line 2218
    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p0

    .line 2219
    if-nez p0, :cond_8

    .line 2220
    const/4 p0, 0x0

    return-object p0

    .line 2222
    :cond_8
    new-instance v0, Landroid/app/ActivityOptions$LaunchCookie;

    invoke-direct {v0, p0}, Landroid/app/ActivityOptions$LaunchCookie;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist writeToParcel(Landroid/app/ActivityOptions$LaunchCookie;Landroid/os/Parcel;)V
    .registers 3

    .line 2227
    if-eqz p0, :cond_7

    .line 2228
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/ActivityOptions$LaunchCookie;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_b

    .line 2230
    :cond_7
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2232
    :goto_b
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 2205
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4

    .line 2254
    instance-of v0, p1, Landroid/app/ActivityOptions$LaunchCookie;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 2255
    check-cast p1, Landroid/app/ActivityOptions$LaunchCookie;

    .line 2256
    iget-object v0, p0, Landroid/app/ActivityOptions$LaunchCookie;->binder:Landroid/os/IBinder;

    iget-object p1, p1, Landroid/app/ActivityOptions$LaunchCookie;->binder:Landroid/os/IBinder;

    if-ne v0, p1, :cond_e

    const/4 v1, 0x1

    :cond_e
    return v1

    .line 2258
    :cond_f
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 2263
    iget-object v0, p0, Landroid/app/ActivityOptions$LaunchCookie;->binder:Landroid/os/IBinder;

    invoke-interface {v0}, Landroid/os/IBinder;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 2213
    iget-object p2, p0, Landroid/app/ActivityOptions$LaunchCookie;->binder:Landroid/os/IBinder;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2214
    return-void
.end method
