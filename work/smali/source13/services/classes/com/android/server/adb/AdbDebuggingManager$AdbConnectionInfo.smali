.class Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;
.super Ljava/lang/Object;
.source "AdbDebuggingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/adb/AdbDebuggingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdbConnectionInfo"
.end annotation


# instance fields
.field private mBssid:Ljava/lang/String;

.field private mPort:I

.field private mSsid:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 575
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 576
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mBssid:Ljava/lang/String;

    .line 577
    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mSsid:Ljava/lang/String;

    .line 578
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mPort:I

    .line 579
    return-void
.end method

.method constructor <init>(Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;)V
    .registers 3
    .param p1, "other"    # Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;

    .line 586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 587
    iget-object v0, p1, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mBssid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mBssid:Ljava/lang/String;

    .line 588
    iget-object v0, p1, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mSsid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mSsid:Ljava/lang/String;

    .line 589
    iget v0, p1, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mPort:I

    iput v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mPort:I

    .line 590
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "bssid"    # Ljava/lang/String;
    .param p2, "ssid"    # Ljava/lang/String;

    .line 581
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 582
    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mBssid:Ljava/lang/String;

    .line 583
    iput-object p2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mSsid:Ljava/lang/String;

    .line 584
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 609
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mBssid:Ljava/lang/String;

    .line 610
    iput-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mSsid:Ljava/lang/String;

    .line 611
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mPort:I

    .line 612
    return-void
.end method

.method public getBSSID()Ljava/lang/String;
    .registers 2

    .line 593
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mBssid:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .registers 2

    .line 601
    iget v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mPort:I

    return v0
.end method

.method public getSSID()Ljava/lang/String;
    .registers 2

    .line 597
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mSsid:Ljava/lang/String;

    return-object v0
.end method

.method public setPort(I)V
    .registers 2
    .param p1, "port"    # I

    .line 605
    iput p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionInfo;->mPort:I

    .line 606
    return-void
.end method
