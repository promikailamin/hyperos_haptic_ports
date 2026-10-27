.class Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl$1;
.super Ljava/lang/Object;
.source "MessageMonitorImpl.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;


# direct methods
.method constructor blacklist <init>(Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;)V
    .registers 2
    .param p1, "this$0"    # Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;

    .line 1142
    iput-object p1, p0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl$1;->this$0:Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 1145
    new-instance v0, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;

    invoke-direct {v0, p1}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1142
    invoke-virtual {p0, p1}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;
    .registers 3
    .param p1, "size"    # I

    .line 1149
    new-array v0, p1, [Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1142
    invoke-virtual {p0, p1}, Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl$1;->newArray(I)[Landroid/os/perfdebug/MessageMonitorImpl$MessageMonitorInfoImpl;

    move-result-object p1

    return-object p1
.end method
