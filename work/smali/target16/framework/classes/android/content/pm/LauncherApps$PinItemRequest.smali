.class public final Landroid/content/pm/LauncherApps$PinItemRequest;
.super Ljava/lang/Object;
.source "LauncherApps.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/LauncherApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PinItemRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/LauncherApps$PinItemRequest$RequestType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/LauncherApps$PinItemRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist REQUEST_TYPE_APPWIDGET:I = 0x2

.field public static final whitelist REQUEST_TYPE_SHORTCUT:I = 0x1


# instance fields
.field private final greylist-max-o mInner:Landroid/content/pm/IPinItemRequest;

.field private final greylist-max-o mRequestType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 2776
    new-instance v0, Landroid/content/pm/LauncherApps$PinItemRequest$1;

    invoke-direct {v0}, Landroid/content/pm/LauncherApps$PinItemRequest$1;-><init>()V

    sput-object v0, Landroid/content/pm/LauncherApps$PinItemRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/pm/IPinItemRequest;I)V
    .registers 3

    .line 2647
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2648
    iput-object p1, p0, Landroid/content/pm/LauncherApps$PinItemRequest;->mInner:Landroid/content/pm/IPinItemRequest;

    .line 2649
    iput p2, p0, Landroid/content/pm/LauncherApps$PinItemRequest;->mRequestType:I

    .line 2650
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 2763
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2764
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 2766
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/LauncherApps$PinItemRequest;->mRequestType:I

    .line 2767
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/content/pm/IPinItemRequest$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPinItemRequest;

    move-result-object p1

    iput-object p1, p0, Landroid/content/pm/LauncherApps$PinItemRequest;->mInner:Landroid/content/pm/IPinItemRequest;

    .line 2768
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/pm/LauncherApps-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/pm/LauncherApps$PinItemRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist accept()Z
    .registers 2

    .line 2760
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/pm/LauncherApps$PinItemRequest;->accept(Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public whitelist accept(Landroid/os/Bundle;)Z
    .registers 3

    .line 2746
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/LauncherApps$PinItemRequest;->mInner:Landroid/content/pm/IPinItemRequest;

    invoke-interface {v0, p1}, Landroid/content/pm/IPinItemRequest;->accept(Landroid/os/Bundle;)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 2747
    :catch_7
    move-exception p1

    .line 2748
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 2788
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAppWidgetProviderInfo(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;
    .registers 3

    .line 2694
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/LauncherApps$PinItemRequest;->mInner:Landroid/content/pm/IPinItemRequest;

    invoke-interface {v0}, Landroid/content/pm/IPinItemRequest;->getAppWidgetProviderInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 2695
    if-nez v0, :cond_a

    .line 2696
    const/4 p1, 0x0

    return-object p1

    .line 2698
    :cond_a
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/appwidget/AppWidgetProviderInfo;->updateDimensions(Landroid/util/DisplayMetrics;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16

    .line 2699
    return-object v0

    .line 2700
    :catch_16
    move-exception p1

    .line 2701
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .registers 2

    .line 2716
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/LauncherApps$PinItemRequest;->mInner:Landroid/content/pm/IPinItemRequest;

    invoke-interface {v0}, Landroid/content/pm/IPinItemRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 2717
    :catch_7
    move-exception v0

    .line 2718
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist getRequestType()I
    .registers 2

    .line 2659
    iget v0, p0, Landroid/content/pm/LauncherApps$PinItemRequest;->mRequestType:I

    return v0
.end method

.method public whitelist getShortcutInfo()Landroid/content/pm/ShortcutInfo;
    .registers 2

    .line 2673
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/LauncherApps$PinItemRequest;->mInner:Landroid/content/pm/IPinItemRequest;

    invoke-interface {v0}, Landroid/content/pm/IPinItemRequest;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 2674
    :catch_7
    move-exception v0

    .line 2675
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist isValid()Z
    .registers 2

    .line 2729
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/LauncherApps$PinItemRequest;->mInner:Landroid/content/pm/IPinItemRequest;

    invoke-interface {v0}, Landroid/content/pm/IPinItemRequest;->isValid()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 2730
    :catch_7
    move-exception v0

    .line 2731
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 2772
    iget p2, p0, Landroid/content/pm/LauncherApps$PinItemRequest;->mRequestType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2773
    iget-object p2, p0, Landroid/content/pm/LauncherApps$PinItemRequest;->mInner:Landroid/content/pm/IPinItemRequest;

    invoke-interface {p2}, Landroid/content/pm/IPinItemRequest;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2774
    return-void
.end method
