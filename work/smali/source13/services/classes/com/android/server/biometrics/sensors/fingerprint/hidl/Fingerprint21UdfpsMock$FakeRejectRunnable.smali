.class final Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeRejectRunnable;
.super Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeFingerRunnable;
.source "Fingerprint21UdfpsMock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FakeRejectRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;


# direct methods
.method private constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;)V
    .registers 2

    .line 283
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeRejectRunnable;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeFingerRunnable;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeFingerRunnable-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeRejectRunnable-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeRejectRunnable;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 286
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$FakeRejectRunnable;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;->-$$Nest$fgetmMockHalResultController(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;)Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController;

    move-result-object v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$MockHalResultController;->sendAuthenticated(JIILjava/util/ArrayList;)V

    .line 287
    return-void
.end method
