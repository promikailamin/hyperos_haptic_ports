.class public final Landroid/content/pm/PackageManager$UninstallCompleteCallback;
.super Ljava/lang/Object;
.source "PackageManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UninstallCompleteCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageManager$UninstallCompleteCallback$DeleteStatus;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/PackageManager$UninstallCompleteCallback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mBinder:Landroid/content/pm/IPackageDeleteObserver2;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 10967
    new-instance v0, Landroid/content/pm/PackageManager$UninstallCompleteCallback$1;

    invoke-direct {v0}, Landroid/content/pm/PackageManager$UninstallCompleteCallback$1;-><init>()V

    sput-object v0, Landroid/content/pm/PackageManager$UninstallCompleteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 10958
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10959
    invoke-static {p1}, Landroid/content/pm/IPackageDeleteObserver2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object p1

    iput-object p1, p0, Landroid/content/pm/PackageManager$UninstallCompleteCallback;->mBinder:Landroid/content/pm/IPackageDeleteObserver2;

    .line 10960
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 10963
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10964
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/content/pm/IPackageDeleteObserver2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object p1

    iput-object p1, p0, Landroid/content/pm/PackageManager$UninstallCompleteCallback;->mBinder:Landroid/content/pm/IPackageDeleteObserver2;

    .line 10965
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/pm/PackageManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$UninstallCompleteCallback;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 10999
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onUninstallComplete(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 10990
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageManager$UninstallCompleteCallback;->mBinder:Landroid/content/pm/IPackageDeleteObserver2;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 10993
    goto :goto_7

    .line 10991
    :catch_6
    move-exception p1

    .line 10994
    :goto_7
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 11005
    iget-object p2, p0, Landroid/content/pm/PackageManager$UninstallCompleteCallback;->mBinder:Landroid/content/pm/IPackageDeleteObserver2;

    invoke-interface {p2}, Landroid/content/pm/IPackageDeleteObserver2;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 11006
    return-void
.end method
