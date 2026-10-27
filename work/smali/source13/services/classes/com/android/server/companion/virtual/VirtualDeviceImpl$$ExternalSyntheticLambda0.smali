.class public final synthetic Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/virtual/VirtualDeviceImpl;

.field public final synthetic f$1:Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/virtual/VirtualDeviceImpl;Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    iput-object p2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;

    invoke-virtual {v0, v1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->lambda$launchPendingIntent$0$com-android-server-companion-virtual-VirtualDeviceImpl(Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;)V

    return-void
.end method
