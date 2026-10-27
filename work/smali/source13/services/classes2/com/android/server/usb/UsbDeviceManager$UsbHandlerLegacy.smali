.class final Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;
.super Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UsbHandlerLegacy"
.end annotation


# static fields
.field private static final USB_CONFIG_PROPERTY:Ljava/lang/String; = "sys.usb.config"

.field private static final USB_STATE_PROPERTY:Ljava/lang/String; = "sys.usb.state"


# instance fields
.field private mCurrentFunctionsStr:Ljava/lang/String;

.field private mCurrentOemFunctions:Ljava/lang/String;

.field private mOemModeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mUsbDataUnlocked:Z


# direct methods
.method constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/usb/UsbDeviceManager;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbPermissionManager;)V
    .registers 12
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "deviceManager"    # Lcom/android/server/usb/UsbDeviceManager;
    .param p4, "alsaManager"    # Lcom/android/server/usb/UsbAlsaManager;
    .param p5, "permissionManager"    # Lcom/android/server/usb/UsbPermissionManager;

    .line 1558
    const-string/jumbo v0, "none"

    invoke-direct/range {p0 .. p5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/usb/UsbDeviceManager;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbPermissionManager;)V

    .line 1560
    :try_start_6
    invoke-direct {p0, p2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->readOemUsbOverrideConfig(Landroid/content/Context;)V

    .line 1562
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getPersistProp(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentOemFunctions:Ljava/lang/String;

    .line 1564
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->isNormalBoot()Z

    move-result v2
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_18} :catch_6a

    const-string/jumbo v3, "sys.usb.state"

    const-string/jumbo v4, "sys.usb.config"

    const/4 v5, 0x1

    if-eqz v2, :cond_33

    .line 1565
    :try_start_21
    invoke-virtual {p0, v4, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctionsStr:Ljava/lang/String;

    .line 1567
    nop

    .line 1568
    invoke-virtual {p0, v3, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1567
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctionsApplied:Z

    goto :goto_4b

    .line 1570
    :cond_33
    invoke-direct {p0, v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getPersistProp(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctionsStr:Ljava/lang/String;

    .line 1572
    invoke-virtual {p0, v4, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1574
    invoke-virtual {p0, v3, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1573
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctionsApplied:Z

    .line 1576
    :goto_4b
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctions:J

    .line 1577
    iput-boolean v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentUsbFunctionsReceived:Z

    .line 1579
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mUsbSpeed:I

    .line 1580
    iput v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentGadgetHalVersion:I

    .line 1582
    new-instance v0, Ljava/io/File;

    const-string v2, "/sys/class/android_usb/android0/state"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1583
    .local v0, "state":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->updateState(Ljava/lang/String;)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_69} :catch_6a

    .line 1586
    .end local v0    # "state":Ljava/lang/String;
    goto :goto_74

    .line 1584
    :catch_6a
    move-exception v0

    .line 1585
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error initializing UsbHandler"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1587
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_74
    return-void
.end method

.method private static addFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "functions"    # Ljava/lang/String;
    .param p1, "function"    # Ljava/lang/String;

    .line 1852
    const-string/jumbo v0, "none"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1853
    return-object p1

    .line 1855
    :cond_a
    invoke-static {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 1856
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_29

    .line 1857
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1859
    :cond_29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1861
    :cond_3a
    return-object p0
.end method

.method private applyOemOverrideFunction(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "usbFunctions"    # Ljava/lang/String;

    .line 1621
    if-eqz p1, :cond_101

    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mOemModeMap:Ljava/util/HashMap;

    if-nez v0, :cond_8

    goto/16 :goto_101

    .line 1625
    :cond_8
    const-string/jumbo v0, "ro.bootmode"

    const-string/jumbo v1, "unknown"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1626
    .local v0, "bootMode":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyOemOverride usbfunctions="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bootmode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mOemModeMap:Ljava/util/HashMap;

    .line 1629
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 1632
    .local v2, "overridesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v2, :cond_100

    const-string/jumbo v3, "normal"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_100

    .line 1633
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_100

    .line 1634
    nop

    .line 1635
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 1636
    .local v1, "overrideFunctions":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "adb"

    const/4 v4, 0x0

    if-eqz v1, :cond_e4

    .line 1637
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OEM USB override: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ==> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " persist across reboot "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1641
    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_df

    .line 1643
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->isAdbEnabled()Z

    move-result v5

    if-eqz v5, :cond_ac

    .line 1644
    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-static {v5, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->addFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "newFunction":Ljava/lang/String;
    goto :goto_b0

    .line 1647
    .end local v3    # "newFunction":Ljava/lang/String;
    :cond_ac
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 1649
    .restart local v3    # "newFunction":Ljava/lang/String;
    :goto_b0
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OEM USB override persisting: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "in prop: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1650
    invoke-direct {p0, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getPersistProp(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1649
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    invoke-direct {p0, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getPersistProp(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1653
    .end local v3    # "newFunction":Ljava/lang/String;
    :cond_df
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    return-object v3

    .line 1654
    :cond_e4
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->isAdbEnabled()Z

    move-result v5

    const-string/jumbo v6, "none"

    if-eqz v5, :cond_f9

    .line 1655
    invoke-static {v6, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->addFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1657
    .restart local v3    # "newFunction":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getPersistProp(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1658
    .end local v3    # "newFunction":Ljava/lang/String;
    goto :goto_100

    .line 1659
    :cond_f9
    invoke-direct {p0, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getPersistProp(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v6}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1663
    .end local v1    # "overrideFunctions":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_100
    :goto_100
    return-object p1

    .line 1622
    .end local v0    # "bootMode":Ljava/lang/String;
    .end local v2    # "overridesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_101
    :goto_101
    return-object p1
.end method

.method static containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p0, "functions"    # Ljava/lang/String;
    .param p1, "function"    # Ljava/lang/String;

    .line 1888
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1889
    .local v0, "index":I
    const/4 v1, 0x0

    if-gez v0, :cond_8

    return v1

    .line 1890
    :cond_8
    const/16 v2, 0x2c

    if-lez v0, :cond_15

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v2, :cond_15

    return v1

    .line 1891
    :cond_15
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v0

    .line 1892
    .local v3, "charAfter":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_27

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v2, :cond_27

    return v1

    .line 1893
    :cond_27
    const/4 v1, 0x1

    return v1
.end method

.method private getPersistProp(Z)Ljava/lang/String;
    .registers 6
    .param p1, "functions"    # Z

    .line 1839
    const-string/jumbo v0, "ro.bootmode"

    const-string/jumbo v1, "unknown"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1840
    .local v0, "bootMode":Ljava/lang/String;
    const-string/jumbo v2, "persist.sys.usb.config"

    .line 1841
    .local v2, "persistProp":Ljava/lang/String;
    const-string/jumbo v3, "normal"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_50

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_50

    .line 1842
    const-string/jumbo v1, "persist.sys.usb."

    if-eqz p1, :cond_39

    .line 1843
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".func"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_50

    .line 1845
    :cond_39
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".config"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1848
    :cond_50
    :goto_50
    return-object v2
.end method

.method private isNormalBoot()Z
    .registers 4

    .line 1752
    const-string/jumbo v0, "ro.bootmode"

    const-string/jumbo v1, "unknown"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1753
    .local v0, "bootMode":Ljava/lang/String;
    const-string/jumbo v2, "normal"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 v1, 0x0

    goto :goto_1d

    :cond_1c
    :goto_1c
    const/4 v1, 0x1

    :goto_1d
    return v1
.end method

.method private readOemUsbOverrideConfig(Landroid/content/Context;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;

    .line 1590
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070096

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1593
    .local v0, "configList":[Ljava/lang/String;
    if-eqz v0, :cond_73

    .line 1594
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_10
    if-ge v3, v1, :cond_73

    aget-object v4, v0, v3

    .line 1595
    .local v4, "config":Ljava/lang/String;
    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1596
    .local v5, "items":[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x3

    if-eq v6, v7, :cond_22

    array-length v6, v5

    const/4 v8, 0x4

    if-ne v6, v8, :cond_70

    .line 1597
    :cond_22
    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mOemModeMap:Ljava/util/HashMap;

    if-nez v6, :cond_2d

    .line 1598
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mOemModeMap:Ljava/util/HashMap;

    .line 1600
    :cond_2d
    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mOemModeMap:Ljava/util/HashMap;

    aget-object v8, v5, v2

    .line 1601
    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    .line 1602
    .local v6, "overrideMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-nez v6, :cond_46

    .line 1603
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    move-object v6, v8

    .line 1604
    iget-object v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mOemModeMap:Ljava/util/HashMap;

    aget-object v9, v5, v2

    invoke-virtual {v8, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1608
    :cond_46
    const/4 v8, 0x1

    aget-object v9, v5, v8

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_70

    .line 1609
    array-length v9, v5

    const/4 v10, 0x2

    if-ne v9, v7, :cond_62

    .line 1610
    aget-object v7, v5, v8

    new-instance v8, Landroid/util/Pair;

    aget-object v9, v5, v10

    const-string v10, ""

    invoke-direct {v8, v9, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_70

    .line 1612
    :cond_62
    aget-object v8, v5, v8

    new-instance v9, Landroid/util/Pair;

    aget-object v10, v5, v10

    aget-object v7, v5, v7

    invoke-direct {v9, v10, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1594
    .end local v4    # "config":Ljava/lang/String;
    .end local v5    # "items":[Ljava/lang/String;
    .end local v6    # "overrideMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_70
    :goto_70
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 1618
    :cond_73
    return-void
.end method

.method private static removeFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "functions"    # Ljava/lang/String;
    .param p1, "function"    # Ljava/lang/String;

    .line 1865
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1866
    .local v1, "split":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    array-length v3, v1

    if-ge v2, v3, :cond_18

    .line 1867
    aget-object v3, v1, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1868
    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 1866
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1871
    .end local v2    # "i":I
    :cond_18
    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_25

    const/4 v2, 0x0

    aget-object v2, v1, v2

    if-nez v2, :cond_25

    .line 1872
    const-string/jumbo v0, "none"

    return-object v0

    .line 1874
    :cond_25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1875
    .local v2, "builder":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2b
    array-length v4, v1

    if-ge v3, v4, :cond_41

    .line 1876
    aget-object v4, v1, v3

    .line 1877
    .local v4, "s":Ljava/lang/String;
    if-eqz v4, :cond_3e

    .line 1878
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_3b

    .line 1879
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1881
    :cond_3b
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1875
    .end local v4    # "s":Ljava/lang/String;
    :cond_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .line 1884
    .end local v3    # "i":I
    :cond_41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setUsbConfig(Ljava/lang/String;)V
    .registers 3
    .param p1, "config"    # Ljava/lang/String;

    .line 1689
    const-string/jumbo v0, "sys.usb.config"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1690
    return-void
.end method

.method private trySetEnabledFunctions(JZ)Z
    .registers 11
    .param p1, "usbFunctions"    # J
    .param p3, "forceRestart"    # Z

    .line 1771
    const/4 v0, 0x0

    .line 1772
    .local v0, "functions":Ljava/lang/String;
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-eqz v1, :cond_b

    .line 1773
    invoke-static {p1, p2}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v0

    .line 1775
    :cond_b
    iput-wide p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctions:J

    .line 1776
    const-string/jumbo v1, "none"

    const/4 v2, 0x1

    if-eqz v0, :cond_1d

    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->applyAdbFunction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1777
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 1778
    :cond_1d
    invoke-direct {p0, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getPersistProp(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1781
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 1782
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getChargingFunctions()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v0

    .line 1784
    :cond_33
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->applyAdbFunction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1786
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->applyOemOverrideFunction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1788
    .local v3, "oemFunctions":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->isNormalBoot()Z

    move-result v4

    if-nez v4, :cond_50

    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctionsStr:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_50

    .line 1789
    invoke-direct {p0, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getPersistProp(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1792
    :cond_50
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5e

    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentOemFunctions:Ljava/lang/String;

    .line 1793
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6c

    :cond_5e
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctionsStr:Ljava/lang/String;

    .line 1794
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6c

    iget-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctionsApplied:Z

    if-eqz v4, :cond_6c

    if-eqz p3, :cond_e7

    .line 1797
    :cond_6c
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setting USB config to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    iput-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mSwitchFunction:Z

    .line 1800
    iput-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctionsStr:Ljava/lang/String;

    .line 1801
    iput-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentOemFunctions:Ljava/lang/String;

    .line 1802
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctionsApplied:Z

    .line 1807
    invoke-direct {p0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->setUsbConfig(Ljava/lang/String;)V

    .line 1809
    invoke-direct {p0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->waitForState(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a2

    .line 1810
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to kick USB config"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    return v4

    .line 1817
    :cond_a2
    invoke-direct {p0, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->setUsbConfig(Ljava/lang/String;)V

    .line 1819
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mBootCompleted:Z

    if-eqz v1, :cond_c4

    .line 1820
    const-string/jumbo v1, "mtp"

    invoke-static {v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_bb

    .line 1821
    const-string/jumbo v1, "ptp"

    invoke-static {v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c4

    .line 1825
    :cond_bb
    iget-wide v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctions:J

    invoke-virtual {p0, v5, v6}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getAppliedFunctions(J)J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->updateUsbStateBroadcastIfNeeded(J)V

    .line 1828
    :cond_c4
    invoke-direct {p0, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->waitForState(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e5

    .line 1829
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to switch USB config to "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    return v4

    .line 1833
    :cond_e5
    iput-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctionsApplied:Z

    .line 1835
    :cond_e7
    return v2
.end method

.method private waitForState(Ljava/lang/String;)Z
    .registers 6
    .param p1, "state"    # Ljava/lang/String;

    .line 1669
    const/4 v0, 0x0

    .line 1672
    .local v0, "value":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    const/16 v2, 0x3c

    if-ge v1, v2, :cond_1f

    .line 1674
    const-string/jumbo v2, "sys.usb.state"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1675
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v2, 0x1

    return v2

    .line 1676
    :cond_17
    const-wide/16 v2, 0x32

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 1672
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1678
    .end local v1    # "i":I
    :cond_1f
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "waitForState("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") FAILED: got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method protected applyAdbFunction(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "functions"    # Ljava/lang/String;

    .line 1759
    if-nez p1, :cond_4

    .line 1760
    const-string p1, ""

    .line 1762
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->isAdbEnabled()Z

    move-result v0

    const-string v1, "adb"

    if-eqz v0, :cond_11

    .line 1763
    invoke-static {p1, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->addFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_15

    .line 1765
    :cond_11
    invoke-static {p1, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->removeFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1767
    :goto_15
    return-object p1
.end method

.method protected setEnabledFunctions(JZ)V
    .registers 13
    .param p1, "usbFunctions"    # J
    .param p3, "forceRestart"    # Z

    .line 1694
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->isUsbDataTransferActive(J)Z

    move-result v0

    .line 1700
    .local v0, "usbDataUnlocked":Z
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mUsbDataUnlocked:Z

    const/4 v2, 0x0

    if-eq v0, v1, :cond_f

    .line 1701
    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mUsbDataUnlocked:Z

    .line 1702
    invoke-virtual {p0, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->updateUsbNotification(Z)V

    .line 1703
    const/4 p3, 0x1

    .line 1709
    :cond_f
    iget-wide v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctions:J

    .line 1710
    .local v3, "oldFunctions":J
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctionsApplied:Z

    .line 1711
    .local v1, "oldFunctionsApplied":Z
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->trySetEnabledFunctions(JZ)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 1712
    return-void

    .line 1721
    :cond_1a
    if-eqz v1, :cond_30

    cmp-long v5, v3, p1

    if-eqz v5, :cond_30

    .line 1722
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Failsafe 1: Restoring previous USB functions."

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1723
    invoke-direct {p0, v3, v4, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->trySetEnabledFunctions(JZ)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 1724
    return-void

    .line 1731
    :cond_30
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Failsafe 2: Restoring default USB functions."

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1732
    const-wide/16 v5, 0x0

    invoke-direct {p0, v5, v6, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->trySetEnabledFunctions(JZ)Z

    move-result v7

    if-eqz v7, :cond_42

    .line 1733
    return-void

    .line 1740
    :cond_42
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Failsafe 3: Restoring empty function list (with ADB if enabled)."

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1741
    invoke-direct {p0, v5, v6, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->trySetEnabledFunctions(JZ)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 1742
    return-void

    .line 1748
    :cond_52
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v5, "Unable to set any USB functions!"

    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    return-void
.end method
