.class public Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$DevicePresenceListener;
.super Ljava/lang/Object;
.source "DevicePresenceProcessor.java"


# instance fields
.field public final mAssociationIdFilter:Ljava/util/Set;

.field public final mListener:Landroid/companion/IOnDevicePresenceEventListener;

.field public final mServiceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/companion/IOnDevicePresenceEventListener;Ljava/util/Set;)V
    .registers 4

    .line 1543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1544
    iput-object p1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$DevicePresenceListener;->mServiceName:Ljava/lang/String;

    .line 1545
    iput-object p2, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$DevicePresenceListener;->mListener:Landroid/companion/IOnDevicePresenceEventListener;

    .line 1546
    iput-object p3, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$DevicePresenceListener;->mAssociationIdFilter:Ljava/util/Set;

    return-void
.end method
