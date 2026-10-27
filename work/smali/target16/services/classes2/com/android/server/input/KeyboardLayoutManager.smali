.class public Lcom/android/server/input/KeyboardLayoutManager;
.super Ljava/lang/Object;
.source "KeyboardLayoutManager.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public mAvailableLayouts:Ljava/util/HashSet;

.field public final mConfiguredKeyboards:Landroid/util/SparseArray;

.field public final mContext:Landroid/content/Context;

.field public mCurrentImeInfo:Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;

.field public final mDataStore:Lcom/android/server/input/PersistentDataStore;

.field public final mHandler:Landroid/os/Handler;

.field public final mImeInfoLock:Ljava/lang/Object;

.field public final mKeyboardLayoutCache:Ljava/util/Map;

.field public final mNative:Lcom/android/server/input/NativeInputManagerService;


# direct methods
.method public static synthetic $r8$lambda$0iY-rg5rUX2ZaLI0oVrWwXSKQmk(Ljava/util/HashSet;Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V
    .registers 4

    .line 263
    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$7iQj0jjk-eFw6kYeLWA-b0HrEv8([Ljava/lang/String;Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V
    .registers 5

    .line 474
    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    .line 475
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_25
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_9} :catch_25

    .line 476
    :try_start_9
    invoke-virtual {p3}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, p0, p2

    .line 477
    invoke-static {v0}, Llibcore/io/Streams;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, p0, p2
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_1b

    .line 478
    :try_start_17
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_25
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_17 .. :try_end_1a} :catch_25

    return-void

    :catchall_1b
    move-exception p0

    .line 474
    :try_start_1c
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_20

    goto :goto_24

    :catchall_20
    move-exception p1

    :try_start_21
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_24
    throw p0
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_25} :catch_25
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_21 .. :try_end_25} :catch_25

    :catch_25
    return-void
.end method

.method public static synthetic $r8$lambda$JJmyN_gbx7JdjQc5Ly0u88rG3wU([Ljava/lang/String;Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V
    .registers 4

    .line 317
    :try_start_0
    new-instance p3, Ljava/io/InputStreamReader;

    .line 318
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_1e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_9} :catch_1e

    .line 319
    :try_start_9
    invoke-static {p3}, Llibcore/io/Streams;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, p0, p2
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_14

    .line 320
    :try_start_10
    invoke-virtual {p3}, Ljava/io/InputStreamReader;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_1e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_10 .. :try_end_13} :catch_1e

    return-void

    :catchall_14
    move-exception p0

    .line 317
    :try_start_15
    invoke-virtual {p3}, Ljava/io/InputStreamReader;->close()V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_19

    goto :goto_1d

    :catchall_19
    move-exception p1

    :try_start_1a
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1d
    throw p0
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1e} :catch_1e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1a .. :try_end_1e} :catch_1e

    :catch_1e
    return-void
.end method

.method public static synthetic $r8$lambda$ZQJeHlJ93XeknKBRAs6ih8Jm3J0(Ljava/util/ArrayList;Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V
    .registers 4

    .line 292
    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$y-LzIDNoOFY2WLN0_gSck9p-JRA(Lcom/android/server/input/KeyboardLayoutManager;Landroid/os/Message;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyboardLayoutManager;->handleMessage(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$yIVDCH8D_p14_UbLsOp9Rf_yMsQ([Landroid/hardware/input/KeyboardLayout;Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V
    .registers 4

    const/4 p1, 0x0

    .line 304
    aput-object p3, p0, p1

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateKeyboardLayouts(Lcom/android/server/input/KeyboardLayoutManager;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/input/KeyboardLayoutManager;->updateKeyboardLayouts()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smisLayoutCompatibleWithLanguageTag(Landroid/hardware/input/KeyboardLayout;Ljava/lang/String;)Z
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/input/KeyboardLayoutManager;->isLayoutCompatibleWithLanguageTag(Landroid/hardware/input/KeyboardLayout;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 108
    const-string v0, "KeyboardLayoutManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/input/KeyboardLayoutManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/NativeInputManagerService;Lcom/android/server/input/PersistentDataStore;Landroid/os/Looper;)V
    .registers 6

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mConfiguredKeyboards:Landroid/util/SparseArray;

    .line 128
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mKeyboardLayoutCache:Ljava/util/Map;

    .line 132
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mAvailableLayouts:Ljava/util/HashSet;

    .line 133
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mImeInfoLock:Ljava/lang/Object;

    .line 140
    iput-object p1, p0, Lcom/android/server/input/KeyboardLayoutManager;->mContext:Landroid/content/Context;

    .line 141
    iput-object p2, p0, Lcom/android/server/input/KeyboardLayoutManager;->mNative:Lcom/android/server/input/NativeInputManagerService;

    .line 142
    iput-object p3, p0, Lcom/android/server/input/KeyboardLayoutManager;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 143
    new-instance p1, Landroid/os/Handler;

    new-instance p2, Lcom/android/server/input/KeyboardLayoutManager$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lcom/android/server/input/KeyboardLayoutManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/input/KeyboardLayoutManager;)V

    const/4 p3, 0x1

    invoke-direct {p1, p4, p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object p1, p0, Lcom/android/server/input/KeyboardLayoutManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static getDefaultKeyboardLayoutBasedOnImeInfo(Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;[Landroid/hardware/input/KeyboardLayout;)Landroid/hardware/input/KeyboardLayoutSelectionResult;
    .registers 11

    .line 724
    invoke-static {p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 727
    array-length v0, p2

    const/4 v1, 0x0

    :goto_5
    const/4 v2, 0x2

    const-string v3, " : "

    const-string v4, "KeyboardLayoutManager"

    if-ge v1, v0, :cond_59

    aget-object v5, p2, v1

    .line 728
    invoke-virtual {v5}, Landroid/hardware/input/KeyboardLayout;->getVendorId()I

    move-result v6

    invoke-static {p0}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;->-$$Nest$fgetmIdentifier(Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;)Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/input/InputDeviceIdentifier;->getVendorId()I

    move-result v7

    if-ne v6, v7, :cond_56

    .line 729
    invoke-virtual {v5}, Landroid/hardware/input/KeyboardLayout;->getProductId()I

    move-result v6

    invoke-static {p0}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;->-$$Nest$fgetmIdentifier(Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;)Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/input/InputDeviceIdentifier;->getProductId()I

    move-result v7

    if-ne v6, v7, :cond_56

    .line 730
    sget-boolean p1, Lcom/android/server/input/KeyboardLayoutManager;->DEBUG:Z

    if-eqz p1, :cond_4c

    .line 731
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getDefaultKeyboardLayoutBasedOnImeInfo() : Layout found based on vendor and product Ids. "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    invoke-virtual {v5}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 731
    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    :cond_4c
    new-instance p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;

    invoke-virtual {v5}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Landroid/hardware/input/KeyboardLayoutSelectionResult;-><init>(Ljava/lang/String;I)V

    return-object p0

    :cond_56
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 742
    :cond_59
    invoke-static {p0}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;->-$$Nest$fgetmLanguageTag(Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8d

    .line 744
    invoke-static {p0}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;->-$$Nest$fgetmLayoutType(Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lcom/android/server/input/KeyboardLayoutManager;->getMatchingLayoutForProvidedLanguageTagAndLayoutType([Landroid/hardware/input/KeyboardLayout;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8d

    .line 748
    sget-boolean p1, Lcom/android/server/input/KeyboardLayoutManager;->DEBUG:Z

    if-eqz p1, :cond_87

    .line 749
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getDefaultKeyboardLayoutBasedOnImeInfo() : Layout found based on HW information (Language tag and Layout type). "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    :cond_87
    new-instance p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;

    invoke-direct {p0, v0, v2}, Landroid/hardware/input/KeyboardLayoutSelectionResult;-><init>(Ljava/lang/String;I)V

    return-object p0

    :cond_8d
    if-eqz p1, :cond_d9

    .line 759
    iget-object v0, p1, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;->mImeSubtypeHandle:Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    if-eqz v0, :cond_d9

    iget-object p1, p1, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;->mImeSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-nez p1, :cond_98

    goto :goto_d9

    .line 766
    :cond_98
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodSubtype;->getPhysicalKeyboardHintLanguageTag()Landroid/icu/util/ULocale;

    move-result-object v0

    if-eqz v0, :cond_a3

    .line 768
    invoke-virtual {v0}, Landroid/icu/util/ULocale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    goto :goto_a7

    :cond_a3
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodSubtype;->getCanonicalizedLanguageTag()Ljava/lang/String;

    move-result-object v0

    .line 770
    :goto_a7
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodSubtype;->getPhysicalKeyboardHintLayoutType()Ljava/lang/String;

    move-result-object p1

    .line 769
    invoke-static {p2, v0, p1}, Lcom/android/server/input/KeyboardLayoutManager;->getMatchingLayoutForProvidedLanguageTagAndLayoutType([Landroid/hardware/input/KeyboardLayout;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 771
    sget-boolean p2, Lcom/android/server/input/KeyboardLayoutManager;->DEBUG:Z

    if-eqz p2, :cond_cd

    .line 772
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getDefaultKeyboardLayoutBasedOnImeInfo() : Layout found based on IME locale matching. "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_cd
    if-eqz p1, :cond_d6

    .line 778
    new-instance p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;

    const/4 p2, 0x3

    invoke-direct {p0, p1, p2}, Landroid/hardware/input/KeyboardLayoutSelectionResult;-><init>(Ljava/lang/String;I)V

    return-object p0

    .line 781
    :cond_d6
    sget-object p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->FAILED:Landroid/hardware/input/KeyboardLayoutSelectionResult;

    return-object p0

    .line 761
    :cond_d9
    :goto_d9
    sget-object p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->FAILED:Landroid/hardware/input/KeyboardLayoutSelectionResult;

    return-object p0
.end method

.method public static getLocalesFromLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;
    .registers 3

    .line 450
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 451
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object p0

    return-object p0

    :cond_b
    const/16 v0, 0x7c

    const/16 v1, 0x2c

    .line 453
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object p0

    return-object p0
.end method

.method public static getMatchingLayoutForProvidedLanguageTag(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .registers 14

    .line 808
    invoke-static {p1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p1

    .line 812
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_84

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/KeyboardLayout;

    .line 813
    invoke-virtual {v2}, Landroid/hardware/input/KeyboardLayout;->getLocales()Landroid/os/LocaleList;

    move-result-object v3

    const/4 v4, 0x0

    .line 814
    :goto_1b
    invoke-virtual {v3}, Landroid/os/LocaleList;->size()I

    move-result v5

    if-ge v4, v5, :cond_a

    .line 815
    invoke-virtual {v3, v4}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v5

    if-nez v5, :cond_28

    goto :goto_81

    .line 819
    :cond_28
    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_37

    goto :goto_81

    .line 824
    :cond_37
    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    const/high16 v9, 0x3f800000    # 1.0f

    if-eqz v6, :cond_4c

    const/high16 v6, 0x40000000    # 2.0f

    goto :goto_5b

    .line 826
    :cond_4c
    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5a

    float-to-double v10, v9

    add-double/2addr v10, v7

    double-to-float v6, v10

    goto :goto_5b

    :cond_5a
    move v6, v9

    .line 829
    :goto_5b
    invoke-virtual {v5}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6b

    add-float/2addr v6, v9

    goto :goto_78

    .line 831
    :cond_6b
    invoke-virtual {v5}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_78

    float-to-double v5, v6

    add-double/2addr v5, v7

    double-to-float v6, v5

    :cond_78
    :goto_78
    cmpl-float v5, v6, v1

    if-lez v5, :cond_81

    .line 836
    invoke-virtual {v2}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    move v1, v6

    :cond_81
    :goto_81
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    :cond_84
    return-object v0
.end method

.method public static getMatchingLayoutForProvidedLanguageTagAndLayoutType([Landroid/hardware/input/KeyboardLayout;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    if-eqz p2, :cond_8

    .line 787
    invoke-static {p2}, Landroid/hardware/input/KeyboardLayout;->isLayoutTypeValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 788
    :cond_8
    const-string/jumbo p2, "undefined"

    .line 790
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 791
    array-length v1, p0

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v1, :cond_26

    aget-object v3, p0, v2

    .line 792
    invoke-virtual {v3}, Landroid/hardware/input/KeyboardLayout;->getLayoutType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 793
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 796
    :cond_26
    invoke-static {v0, p1}, Lcom/android/server/input/KeyboardLayoutManager;->getMatchingLayoutForProvidedLanguageTag(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2d

    return-object p2

    .line 802
    :cond_2d
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/server/input/KeyboardLayoutManager;->getMatchingLayoutForProvidedLanguageTag(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getScriptCodes(Ljava/util/Locale;)[I
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_6

    .line 1139
    new-array p0, v0, [I

    return-object p0

    .line 1141
    :cond_6
    invoke-virtual {p0}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 1142
    invoke-virtual {p0}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/lang/UScript;->getCodeFromName(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_20

    .line 1144
    filled-new-array {v1}, [I

    move-result-object p0

    return-object p0

    .line 1147
    :cond_20
    invoke-static {p0}, Landroid/icu/lang/UScript;->getCode(Ljava/util/Locale;)[I

    move-result-object p0

    if-eqz p0, :cond_27

    return-object p0

    .line 1151
    :cond_27
    new-array p0, v0, [I

    return-object p0
.end method

.method public static haveCommonValue([I[I)Z
    .registers 9

    .line 1155
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_17

    aget v3, p0, v2

    .line 1156
    array-length v4, p1

    move v5, v1

    :goto_9
    if-ge v5, v4, :cond_14

    aget v6, p1, v5

    if-ne v3, v6, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_17
    return v1
.end method

.method public static isLayoutCompatibleWithLanguageTag(Landroid/hardware/input/KeyboardLayout;Ljava/lang/String;)Z
    .registers 6

    .line 1108
    invoke-virtual {p0}, Landroid/hardware/input/KeyboardLayout;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    .line 1109
    invoke-virtual {p0}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_39

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_39

    .line 1115
    :cond_12
    invoke-static {p1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/input/KeyboardLayoutManager;->getScriptCodes(Ljava/util/Locale;)[I

    move-result-object p1

    .line 1116
    array-length v0, p1

    if-nez v0, :cond_1e

    return v1

    :cond_1e
    const/4 v0, 0x0

    move v2, v0

    .line 1120
    :goto_20
    invoke-virtual {p0}, Landroid/os/LocaleList;->size()I

    move-result v3

    if-ge v2, v3, :cond_38

    .line 1121
    invoke-virtual {p0, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v3

    .line 1122
    invoke-static {v3}, Lcom/android/server/input/KeyboardLayoutManager;->getScriptCodes(Ljava/util/Locale;)[I

    move-result-object v3

    .line 1123
    invoke-static {v3, p1}, Lcom/android/server/input/KeyboardLayoutManager;->haveCommonValue([I[I)Z

    move-result v3

    if-eqz v3, :cond_35

    return v1

    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_38
    return v0

    :cond_39
    :goto_39
    return v1
.end method


# virtual methods
.method public final createConfiguredNotificationText(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;
    .registers 7

    .line 995
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 996
    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 997
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_59

    const/4 v2, 0x2

    if-eq p1, v2, :cond_45

    const/4 v3, 0x3

    if-eq p1, v3, :cond_2d

    .line 1010
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    filled-new-array {p1, v0, p2}, [Ljava/lang/Object;

    move-result-object p1

    const p2, 0x1040555

    .line 1008
    invoke-virtual {p0, p2, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1006
    :cond_2d
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    filled-new-array {p1, v0, p2}, [Ljava/lang/Object;

    move-result-object p1

    const p2, 0x104055a

    .line 1005
    invoke-virtual {p0, p2, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1003
    :cond_45
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const p2, 0x104055b

    .line 1002
    invoke-virtual {p0, p2, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1000
    :cond_59
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const p2, 0x1040558

    .line 999
    invoke-virtual {p0, p2, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getImeInfoListForLayoutMapping()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;",
            ">;"
        }
    .end annotation

    .line 1078
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1079
    iget-object p0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    .line 1080
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    .line 1079
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, p0

    check-cast v1, Landroid/os/UserManager;

    .line 1085
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object v1

    const/4 v2, 0x1

    .line 1086
    invoke-virtual {p0, v2}, Landroid/os/UserManager;->getUserHandles(Z)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_22
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 1087
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 1089
    invoke-virtual {v1, v3}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->getEnabledInputMethodListAsUser(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    .line 1093
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v6

    .line 1092
    invoke-virtual {v1, v6, v2, v3}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->getEnabledInputMethodSubtypeListAsUser(Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v6

    .line 1095
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_52
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodSubtype;

    .line 1096
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->isSuitableForPhysicalKeyboardLayoutMapping()Z

    move-result v8

    if-nez v8, :cond_65

    goto :goto_52

    .line 1099
    :cond_65
    new-instance v8, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;

    invoke-direct {v8, v3, v5, v7}, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;-><init>(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_52

    :cond_6e
    return-object v0
.end method

.method public final getInputDevice(I)Landroid/view/InputDevice;
    .registers 3

    .line 1064
    iget-object p0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mContext:Landroid/content/Context;

    const-class v0, Landroid/hardware/input/InputManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/input/InputManager;

    if-eqz p0, :cond_11

    .line 1065
    invoke-virtual {p0, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object p0

    return-object p0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Landroid/view/InputDevice;
    .registers 3

    .line 1070
    iget-object p0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mContext:Landroid/content/Context;

    const-class v0, Landroid/hardware/input/InputManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/input/InputManager;

    if-eqz p0, :cond_15

    .line 1072
    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object p1

    .line 1071
    invoke-virtual {p0, p1}, Landroid/hardware/input/InputManager;->getInputDeviceByDescriptor(Ljava/lang/String;)Landroid/view/InputDevice;

    move-result-object p0

    return-object p0

    :cond_15
    const/4 p0, 0x0

    return-object p0
.end method

.method public getKeyCharacterMap(Ljava/lang/String;)Landroid/view/KeyCharacterMap;
    .registers 4

    const/4 v0, 0x1

    .line 314
    new-array v0, v0, [Ljava/lang/String;

    .line 315
    new-instance v1, Lcom/android/server/input/KeyboardLayoutManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Lcom/android/server/input/KeyboardLayoutManager$$ExternalSyntheticLambda3;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/input/KeyboardLayoutManager;->visitKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutVisitor;)V

    const/4 p0, 0x0

    .line 323
    aget-object v1, v0, p0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 p0, -0x1

    .line 324
    invoke-static {p0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object p0

    return-object p0

    .line 326
    :cond_1a
    aget-object p0, v0, p0

    invoke-static {p1, p0}, Landroid/view/KeyCharacterMap;->load(Ljava/lang/String;Ljava/lang/String;)Landroid/view/KeyCharacterMap;

    move-result-object p0

    return-object p0
.end method

.method public getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;
    .registers 5

    .line 299
    const-string v0, "keyboardLayoutDescriptor must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 302
    new-array v0, v0, [Landroid/hardware/input/KeyboardLayout;

    .line 303
    new-instance v1, Lcom/android/server/input/KeyboardLayoutManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/server/input/KeyboardLayoutManager$$ExternalSyntheticLambda0;-><init>([Landroid/hardware/input/KeyboardLayout;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/input/KeyboardLayoutManager;->visitKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutVisitor;)V

    const/4 p0, 0x0

    .line 305
    aget-object v1, v0, p0

    if-nez v1, :cond_30

    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not get keyboard layout with descriptor \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "KeyboardLayoutManager"

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_30
    aget-object p0, v0, p0

    return-object p0
.end method

.method public getKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Landroid/hardware/input/KeyboardLayoutSelectionResult;
    .registers 8

    .line 494
    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyboardLayoutManager;->getInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_59

    .line 495
    invoke-virtual {v0}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v1

    if-nez v1, :cond_59

    invoke-virtual {v0}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_59

    .line 498
    :cond_13
    new-instance v1, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;-><init>(Landroid/view/InputDevice;Lcom/android/server/input/KeyboardLayoutManager-IA;)V

    .line 499
    new-instance v0, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;

    invoke-direct {v0, p2, p3, p4}, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;-><init>(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    invoke-virtual {p0, v1, v0}, Lcom/android/server/input/KeyboardLayoutManager;->getKeyboardLayoutForInputDeviceInternal(Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;)Landroid/hardware/input/KeyboardLayoutSelectionResult;

    move-result-object p0

    .line 501
    sget-boolean p3, Lcom/android/server/input/KeyboardLayoutManager;->DEBUG:Z

    if-eqz p3, :cond_58

    .line 502
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getKeyboardLayoutForInputDevice() "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/input/InputDeviceIdentifier;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", userId : "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", subtype = "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "KeyboardLayoutManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_58
    return-object p0

    .line 496
    :cond_59
    :goto_59
    sget-object p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->FAILED:Landroid/hardware/input/KeyboardLayoutSelectionResult;

    return-object p0
.end method

.method public final getKeyboardLayoutForInputDeviceInternal(Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;)Landroid/hardware/input/KeyboardLayoutSelectionResult;
    .registers 8

    .line 648
    new-instance v0, Lcom/android/server/input/KeyboardLayoutManager$LayoutKey;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/android/server/input/KeyboardLayoutManager$LayoutKey;-><init>(Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;Lcom/android/server/input/KeyboardLayoutManager-IA;)V

    invoke-virtual {v0}, Lcom/android/server/input/KeyboardLayoutManager$LayoutKey;->toString()Ljava/lang/String;

    move-result-object v0

    .line 649
    iget-object v1, p0, Lcom/android/server/input/KeyboardLayoutManager;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v1

    .line 650
    :try_start_d
    iget-object v2, p0, Lcom/android/server/input/KeyboardLayoutManager;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p1}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/android/server/input/PersistentDataStore;->getKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_23

    .line 652
    new-instance p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;

    const/4 p1, 0x1

    invoke-direct {p0, v2, p1}, Landroid/hardware/input/KeyboardLayoutSelectionResult;-><init>(Ljava/lang/String;I)V

    monitor-exit v1

    return-object p0

    :catchall_21
    move-exception p0

    goto :goto_62

    .line 655
    :cond_23
    iget-object v2, p0, Lcom/android/server/input/KeyboardLayoutManager;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p1}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GLOBAL_OVERRIDE_KEY"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/input/PersistentDataStore;->getKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_39

    .line 658
    new-instance p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;

    const/4 p1, 0x2

    invoke-direct {p0, v2, p1}, Landroid/hardware/input/KeyboardLayoutSelectionResult;-><init>(Ljava/lang/String;I)V

    monitor-exit v1

    return-object p0

    .line 660
    :cond_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_d .. :try_end_3a} :catchall_21

    .line 662
    iget-object v2, p0, Lcom/android/server/input/KeyboardLayoutManager;->mKeyboardLayoutCache:Ljava/util/Map;

    monitor-enter v2

    .line 664
    :try_start_3d
    iget-object v1, p0, Lcom/android/server/input/KeyboardLayoutManager;->mKeyboardLayoutCache:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 665
    iget-object p0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mKeyboardLayoutCache:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;

    monitor-exit v2

    return-object p0

    :catchall_4f
    move-exception p0

    goto :goto_60

    .line 668
    :cond_51
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/KeyboardLayoutManager;->getKeyboardLayoutListForInputDeviceInternal(Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;)[Landroid/hardware/input/KeyboardLayout;

    move-result-object v1

    .line 672
    invoke-static {p1, p2, v1}, Lcom/android/server/input/KeyboardLayoutManager;->getDefaultKeyboardLayoutBasedOnImeInfo(Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;[Landroid/hardware/input/KeyboardLayout;)Landroid/hardware/input/KeyboardLayoutSelectionResult;

    move-result-object p1

    .line 674
    iget-object p0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mKeyboardLayoutCache:Ljava/util/Map;

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    monitor-exit v2

    return-object p1

    .line 677
    :goto_60
    monitor-exit v2
    :try_end_61
    .catchall {:try_start_3d .. :try_end_61} :catchall_4f

    throw p0

    .line 660
    :goto_62
    :try_start_62
    monitor-exit v1
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_21

    throw p0
.end method

.method public getKeyboardLayoutListForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)[Landroid/hardware/input/KeyboardLayout;
    .registers 7

    .line 561
    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyboardLayoutManager;->getInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Landroid/view/InputDevice;

    move-result-object p1

    if-eqz p1, :cond_23

    .line 562
    invoke-virtual {p1}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v0

    if-nez v0, :cond_23

    invoke-virtual {p1}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_23

    .line 565
    :cond_13
    new-instance v0, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;-><init>(Landroid/view/InputDevice;Lcom/android/server/input/KeyboardLayoutManager-IA;)V

    new-instance p1, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;

    invoke-direct {p1, p2, p3, p4}, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;-><init>(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    invoke-virtual {p0, v0, p1}, Lcom/android/server/input/KeyboardLayoutManager;->getKeyboardLayoutListForInputDeviceInternal(Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;)[Landroid/hardware/input/KeyboardLayout;

    move-result-object p0

    return-object p0

    :cond_23
    :goto_23
    const/4 p0, 0x0

    .line 563
    new-array p0, p0, [Landroid/hardware/input/KeyboardLayout;

    return-object p0
.end method

.method public final getKeyboardLayoutListForInputDeviceInternal(Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;)[Landroid/hardware/input/KeyboardLayout;
    .registers 13

    .line 571
    new-instance v0, Lcom/android/server/input/KeyboardLayoutManager$LayoutKey;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/android/server/input/KeyboardLayoutManager$LayoutKey;-><init>(Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;Lcom/android/server/input/KeyboardLayoutManager-IA;)V

    invoke-virtual {v0}, Lcom/android/server/input/KeyboardLayoutManager$LayoutKey;->toString()Ljava/lang/String;

    move-result-object v0

    .line 575
    iget-object v1, p0, Lcom/android/server/input/KeyboardLayoutManager;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v1

    .line 576
    :try_start_d
    iget-object v2, p0, Lcom/android/server/input/KeyboardLayoutManager;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p1}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/android/server/input/PersistentDataStore;->getKeyboardLayout(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 578
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_51

    .line 580
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_37

    .line 582
    iget-object v0, p2, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;->mImeSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-nez v0, :cond_24

    goto :goto_37

    .line 585
    :cond_24
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->getPhysicalKeyboardHintLanguageTag()Landroid/icu/util/ULocale;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 586
    invoke-virtual {v0}, Landroid/icu/util/ULocale;->toLanguageTag()Ljava/lang/String;

    move-result-object p2

    goto :goto_35

    .line 587
    :cond_2f
    iget-object p2, p2, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;->mImeSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodSubtype;->getCanonicalizedLanguageTag()Ljava/lang/String;

    move-result-object p2

    :goto_35
    move-object v8, p2

    goto :goto_3a

    .line 583
    :cond_37
    :goto_37
    const-string p2, ""

    goto :goto_35

    .line 590
    :goto_3a
    new-instance v4, Lcom/android/server/input/KeyboardLayoutManager$2;

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/server/input/KeyboardLayoutManager$2;-><init>(Lcom/android/server/input/KeyboardLayoutManager;Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Lcom/android/server/input/KeyboardLayoutManager;->visitAllKeyboardLayouts(Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutVisitor;)V

    .line 618
    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 p0, 0x0

    .line 619
    new-array p0, p0, [Landroid/hardware/input/KeyboardLayout;

    invoke-virtual {v7, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/hardware/input/KeyboardLayout;

    return-object p0

    :catchall_51
    move-exception v0

    move-object p0, v0

    .line 578
    :try_start_53
    monitor-exit v1
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_51

    throw p0
.end method

.method public getKeyboardLayoutOverlay(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 7

    .line 461
    iget-object v0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mImeInfoLock:Ljava/lang/Object;

    monitor-enter v0

    .line 462
    :try_start_3
    new-instance v1, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;-><init>(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/input/KeyboardLayoutManager-IA;)V

    iget-object p1, p0, Lcom/android/server/input/KeyboardLayoutManager;->mCurrentImeInfo:Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/input/KeyboardLayoutManager;->getKeyboardLayoutForInputDeviceInternal(Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;)Landroid/hardware/input/KeyboardLayoutSelectionResult;

    move-result-object p1

    .line 465
    invoke-virtual {p1}, Landroid/hardware/input/KeyboardLayoutSelectionResult;->getLayoutDescriptor()Ljava/lang/String;

    move-result-object p1

    .line 466
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_44

    if-nez p1, :cond_17

    return-object v2

    :cond_17
    const/4 p2, 0x2

    .line 471
    new-array p2, p2, [Ljava/lang/String;

    .line 472
    new-instance p3, Lcom/android/server/input/KeyboardLayoutManager$$ExternalSyntheticLambda1;

    invoke-direct {p3, p2}, Lcom/android/server/input/KeyboardLayoutManager$$ExternalSyntheticLambda1;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0, p1, p3}, Lcom/android/server/input/KeyboardLayoutManager;->visitKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutVisitor;)V

    const/4 p0, 0x0

    .line 481
    aget-object p0, p2, p0

    if-nez p0, :cond_43

    .line 482
    const-string p0, "KeyboardLayoutManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Could not get keyboard layout with descriptor \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_43
    return-object p2

    :catchall_44
    move-exception p0

    .line 466
    :try_start_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw p0
.end method

.method public getKeyboardLayouts()[Landroid/hardware/input/KeyboardLayout;
    .registers 3

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 292
    new-instance v1, Lcom/android/server/input/KeyboardLayoutManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/android/server/input/KeyboardLayoutManager$$ExternalSyntheticLambda2;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p0, v1}, Lcom/android/server/input/KeyboardLayoutManager;->visitAllKeyboardLayouts(Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutVisitor;)V

    const/4 p0, 0x0

    .line 293
    new-array p0, p0, [Landroid/hardware/input/KeyboardLayout;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/hardware/input/KeyboardLayout;

    return-object p0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .registers 6

    .line 1043
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_15

    const/4 p1, 0x2

    if-eq v0, p1, :cond_11

    const/4 p1, 0x3

    if-eq v0, p1, :cond_d

    return v1

    .line 1055
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/input/KeyboardLayoutManager;->updateKeyboardLayouts()V

    return v2

    .line 1052
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/input/KeyboardLayoutManager;->reloadKeyboardLayouts()V

    return v2

    .line 1047
    :cond_15
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [I

    array-length v0, p1

    :goto_1a
    if-ge v1, v0, :cond_24

    aget v3, p1, v1

    .line 1048
    invoke-virtual {p0, v3}, Lcom/android/server/input/KeyboardLayoutManager;->onInputDeviceAdded(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_24
    return v2
.end method

.method public final hideKeyboardLayoutNotification()V
    .registers 4

    .line 939
    iget-object p0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    if-nez p0, :cond_d

    return-void

    :cond_d
    const/16 v0, 0x13

    .line 945
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    return-void
.end method

.method public isVirtualDevice(I)Z
    .registers 2

    .line 1132
    const-class p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    if-eqz p0, :cond_12

    .line 1134
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->isInputDeviceOwnedByVirtualDevice(I)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public final logKeyboardConfigurationEvent(Landroid/view/InputDevice;Ljava/util/List;Ljava/util/List;Z)V
    .registers 7

    .line 1018
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_53

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_53

    .line 1021
    :cond_d
    new-instance p0, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent$Builder;

    invoke-direct {p0, p1}, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent$Builder;-><init>(Landroid/view/InputDevice;)V

    .line 1022
    invoke-virtual {p0, p4}, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent$Builder;->setIsFirstTimeConfiguration(Z)Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent$Builder;

    move-result-object p0

    const/4 p1, 0x0

    .line 1024
    :goto_17
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p4

    if-ge p1, p4, :cond_4c

    .line 1025
    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/hardware/input/KeyboardLayoutSelectionResult;

    const/4 v0, 0x0

    if-eqz p4, :cond_3d

    .line 1028
    invoke-virtual {p4}, Landroid/hardware/input/KeyboardLayoutSelectionResult;->getLayoutDescriptor()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3d

    .line 1029
    invoke-virtual {p4}, Landroid/hardware/input/KeyboardLayoutSelectionResult;->getSelectionCriteria()I

    move-result v1

    .line 1031
    invoke-virtual {p4}, Landroid/hardware/input/KeyboardLayoutSelectionResult;->getLayoutDescriptor()Ljava/lang/String;

    move-result-object p4

    .line 1030
    invoke-static {p4}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutDescriptor;->parse(Ljava/lang/String;)Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutDescriptor;

    move-result-object p4

    if-eqz p4, :cond_3e

    .line 1033
    iget-object v0, p4, Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutDescriptor;->keyboardLayoutName:Ljava/lang/String;

    goto :goto_3e

    :cond_3d
    const/4 v1, 0x4

    .line 1036
    :cond_3e
    :goto_3e
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;

    iget-object p4, p4, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;->mImeSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {p0, p4, v0, v1}, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent$Builder;->addLayoutSelection(Landroid/view/inputmethod/InputMethodSubtype;Ljava/lang/String;I)Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent$Builder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_17

    .line 1039
    :cond_4c
    invoke-virtual {p0}, Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent$Builder;->build()Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/input/KeyboardMetricsCollector;->logKeyboardConfiguredAtom(Lcom/android/server/input/KeyboardMetricsCollector$KeyboardConfigurationEvent;)V

    :cond_53
    :goto_53
    return-void
.end method

.method public final maybeUpdateNotification()V
    .registers 5

    .line 852
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 853
    :goto_6
    iget-object v2, p0, Lcom/android/server/input/KeyboardLayoutManager;->mConfiguredKeyboards:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_33

    .line 854
    iget-object v2, p0, Lcom/android/server/input/KeyboardLayoutManager;->mConfiguredKeyboards:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 855
    iget-object v3, p0, Lcom/android/server/input/KeyboardLayoutManager;->mConfiguredKeyboards:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;

    .line 856
    invoke-virtual {p0, v2}, Lcom/android/server/input/KeyboardLayoutManager;->isVirtualDevice(I)Z

    move-result v2

    if-eqz v2, :cond_23

    goto :goto_30

    .line 861
    :cond_23
    invoke-static {v3}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;->-$$Nest$mhasConfiguredLayouts(Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 862
    invoke-virtual {p0}, Lcom/android/server/input/KeyboardLayoutManager;->showMissingKeyboardLayoutNotification()V

    return-void

    .line 865
    :cond_2d
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 867
    :cond_33
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3d

    .line 868
    invoke-virtual {p0}, Lcom/android/server/input/KeyboardLayoutManager;->hideKeyboardLayoutNotification()V

    return-void

    .line 871
    :cond_3d
    invoke-virtual {p0, v0}, Lcom/android/server/input/KeyboardLayoutManager;->showConfiguredKeyboardLayoutNotification(Ljava/util/List;)V

    return-void
.end method

.method public onInputDeviceAdded(I)V
    .registers 3

    const/4 v0, 0x1

    .line 177
    invoke-virtual {p0, p1, v0}, Lcom/android/server/input/KeyboardLayoutManager;->onInputDeviceChangedInternal(IZ)V

    return-void
.end method

.method public onInputDeviceChanged(I)V
    .registers 3

    const/4 v0, 0x0

    .line 190
    invoke-virtual {p0, p1, v0}, Lcom/android/server/input/KeyboardLayoutManager;->onInputDeviceChangedInternal(IZ)V

    return-void
.end method

.method public final onInputDeviceChangedInternal(IZ)V
    .registers 13

    .line 194
    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyboardLayoutManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_c1

    .line 195
    invoke-virtual {v0}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v1

    if-nez v1, :cond_c1

    invoke-virtual {v0}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v1

    if-nez v1, :cond_14

    goto/16 :goto_c1

    .line 198
    :cond_14
    new-instance v1, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;-><init>(Landroid/view/InputDevice;Lcom/android/server/input/KeyboardLayoutManager-IA;)V

    .line 199
    iget-object v3, p0, Lcom/android/server/input/KeyboardLayoutManager;->mConfiguredKeyboards:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;

    if-nez v3, :cond_2e

    .line 201
    new-instance v3, Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;

    invoke-direct {v3, p1, v2}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;-><init>(ILcom/android/server/input/KeyboardLayoutManager-IA;)V

    .line 202
    iget-object v2, p0, Lcom/android/server/input/KeyboardLayoutManager;->mConfiguredKeyboards:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 206
    :cond_2e
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 207
    invoke-virtual {p0}, Lcom/android/server/input/KeyboardLayoutManager;->getImeInfoListForLayoutMapping()Ljava/util/List;

    move-result-object v2

    .line 208
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 210
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    :goto_41
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_65

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;

    .line 212
    invoke-virtual {p0, v1, v7}, Lcom/android/server/input/KeyboardLayoutManager;->getKeyboardLayoutForInputDeviceInternal(Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;)Landroid/hardware/input/KeyboardLayoutSelectionResult;

    move-result-object v7

    .line 214
    invoke-virtual {v7}, Landroid/hardware/input/KeyboardLayoutSelectionResult;->getLayoutDescriptor()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_60

    .line 215
    invoke-virtual {v7}, Landroid/hardware/input/KeyboardLayoutSelectionResult;->getLayoutDescriptor()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_61

    :cond_60
    move v6, v8

    .line 219
    :goto_61
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_41

    .line 222
    :cond_65
    sget-boolean v5, Lcom/android/server/input/KeyboardLayoutManager;->DEBUG:Z

    if-eqz v5, :cond_87

    .line 223
    const-string v5, "KeyboardLayoutManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Layouts selected for input device: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " -> selectedLayouts: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_87
    if-eqz v6, :cond_8c

    .line 231
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 234
    :cond_8c
    invoke-static {v3, p1}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;->-$$Nest$msetConfiguredLayouts(Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;Ljava/util/Set;)V

    .line 236
    iget-object v3, p0, Lcom/android/server/input/KeyboardLayoutManager;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v3

    .line 238
    :try_start_92
    invoke-virtual {v1}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    .line 239
    iget-object v5, p0, Lcom/android/server/input/KeyboardLayoutManager;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v5, v1, p1}, Lcom/android/server/input/PersistentDataStore;->setSelectedKeyboardLayouts(Ljava/lang/String;Ljava/util/Set;)Z

    move-result p1

    if-eqz p2, :cond_ab

    .line 246
    iget-object p2, p0, Lcom/android/server/input/KeyboardLayoutManager;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    .line 247
    invoke-virtual {p2, v1}, Lcom/android/server/input/PersistentDataStore;->hasInputDeviceEntry(Ljava/lang/String;)Z

    move-result p2

    xor-int/2addr p2, v8

    .line 246
    invoke-virtual {p0, v0, v2, v4, p2}, Lcom/android/server/input/KeyboardLayoutManager;->logKeyboardConfigurationEvent(Landroid/view/InputDevice;Ljava/util/List;Ljava/util/List;Z)V
    :try_end_a8
    .catchall {:try_start_92 .. :try_end_a8} :catchall_a9

    goto :goto_ab

    :catchall_a9
    move-exception p1

    goto :goto_b9

    .line 250
    :cond_ab
    :goto_ab
    :try_start_ab
    iget-object p2, p0, Lcom/android/server/input/KeyboardLayoutManager;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p2}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 252
    monitor-exit v3
    :try_end_b1
    .catchall {:try_start_ab .. :try_end_b1} :catchall_b7

    if-eqz p1, :cond_c1

    .line 254
    invoke-virtual {p0}, Lcom/android/server/input/KeyboardLayoutManager;->maybeUpdateNotification()V

    return-void

    :catchall_b7
    move-exception p0

    goto :goto_bf

    .line 250
    :goto_b9
    :try_start_b9
    iget-object p0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 251
    throw p1

    .line 252
    :goto_bf
    monitor-exit v3
    :try_end_c0
    .catchall {:try_start_b9 .. :try_end_c0} :catchall_b7

    throw p0

    :cond_c1
    :goto_c1
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .registers 3

    .line 183
    iget-object v0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mConfiguredKeyboards:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 184
    invoke-virtual {p0}, Lcom/android/server/input/KeyboardLayoutManager;->maybeUpdateNotification()V

    return-void
.end method

.method public onInputMethodSubtypeChanged(ILcom/android/internal/inputmethod/InputMethodSubtypeHandle;Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 6

    if-nez p2, :cond_e

    .line 627
    sget-boolean p0, Lcom/android/server/input/KeyboardLayoutManager;->DEBUG:Z

    if-eqz p0, :cond_d

    .line 628
    const-string p0, "KeyboardLayoutManager"

    const-string p1, "No InputMethod is running, ignoring change"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    return-void

    .line 632
    :cond_e
    iget-object v0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mImeInfoLock:Ljava/lang/Object;

    monitor-enter v0

    .line 633
    :try_start_11
    iget-object v1, p0, Lcom/android/server/input/KeyboardLayoutManager;->mCurrentImeInfo:Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;

    if-eqz v1, :cond_26

    iget-object v1, v1, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;->mImeSubtypeHandle:Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    invoke-virtual {p2, v1}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/android/server/input/KeyboardLayoutManager;->mCurrentImeInfo:Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;

    iget v1, v1, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;->mUserId:I

    if-eq v1, p1, :cond_55

    goto :goto_26

    :catchall_24
    move-exception p0

    goto :goto_57

    .line 635
    :cond_26
    :goto_26
    new-instance v1, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;-><init>(ILcom/android/internal/inputmethod/InputMethodSubtypeHandle;Landroid/view/inputmethod/InputMethodSubtype;)V

    iput-object v1, p0, Lcom/android/server/input/KeyboardLayoutManager;->mCurrentImeInfo:Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;

    .line 636
    iget-object p0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mHandler:Landroid/os/Handler;

    const/4 p3, 0x2

    invoke-virtual {p0, p3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 637
    sget-boolean p0, Lcom/android/server/input/KeyboardLayoutManager;->DEBUG:Z

    if-eqz p0, :cond_55

    .line 638
    const-string p0, "KeyboardLayoutManager"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InputMethodSubtype changed: userId="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " subtypeHandle="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    :cond_55
    monitor-exit v0

    return-void

    :goto_57
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_11 .. :try_end_58} :catchall_24

    throw p0
.end method

.method public final reloadKeyboardLayouts()V
    .registers 3

    .line 844
    sget-boolean v0, Lcom/android/server/input/KeyboardLayoutManager;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 845
    const-string v0, "KeyboardLayoutManager"

    const-string v1, "Reloading keyboard layouts."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    :cond_b
    iget-object p0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->reloadKeyboardLayouts()V

    return-void
.end method

.method public setKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Ljava/lang/String;)V
    .registers 9

    .line 525
    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyboardLayoutManager;->getInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Landroid/view/InputDevice;

    move-result-object p1

    if-eqz p1, :cond_2a

    .line 526
    invoke-virtual {p1}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-virtual {p1}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_2a

    .line 529
    :cond_13
    new-instance v0, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;-><init>(Landroid/view/InputDevice;Lcom/android/server/input/KeyboardLayoutManager-IA;)V

    .line 530
    new-instance p1, Lcom/android/server/input/KeyboardLayoutManager$LayoutKey;

    new-instance v2, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;

    invoke-direct {v2, p2, p3, p4}, Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;-><init>(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    invoke-direct {p1, v0, v2, v1}, Lcom/android/server/input/KeyboardLayoutManager$LayoutKey;-><init>(Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;Lcom/android/server/input/KeyboardLayoutManager$ImeInfo;Lcom/android/server/input/KeyboardLayoutManager-IA;)V

    .line 531
    invoke-virtual {p1}, Lcom/android/server/input/KeyboardLayoutManager$LayoutKey;->toString()Ljava/lang/String;

    move-result-object p1

    .line 532
    invoke-virtual {p0, v0, p1, p5}, Lcom/android/server/input/KeyboardLayoutManager;->setKeyboardLayoutForInputDeviceInternal(Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    :goto_2a
    return-void
.end method

.method public final setKeyboardLayoutForInputDeviceInternal(Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 538
    const-string v0, "keyboardLayoutDescriptor must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 540
    iget-object v0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v0

    .line 542
    :try_start_8
    iget-object v1, p0, Lcom/android/server/input/KeyboardLayoutManager;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p1}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2, p3}, Lcom/android/server/input/PersistentDataStore;->setKeyboardLayout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 544
    sget-boolean v1, Lcom/android/server/input/KeyboardLayoutManager;->DEBUG:Z

    if-eqz v1, :cond_42

    .line 545
    const-string v1, "KeyboardLayoutManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setKeyboardLayoutForInputDevice() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " key: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " keyboardLayoutDescriptor: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42

    :catchall_40
    move-exception p1

    goto :goto_51

    .line 549
    :cond_42
    :goto_42
    iget-object p1, p0, Lcom/android/server/input/KeyboardLayoutManager;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_48
    .catchall {:try_start_8 .. :try_end_48} :catchall_40

    .line 552
    :cond_48
    :try_start_48
    iget-object p0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 554
    monitor-exit v0

    return-void

    :catchall_4f
    move-exception p0

    goto :goto_57

    .line 552
    :goto_51
    iget-object p0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 553
    throw p1

    .line 554
    :goto_57
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_48 .. :try_end_58} :catchall_4f

    throw p0
.end method

.method public setKeyboardLayoutOverrideForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .registers 5

    .line 511
    invoke-virtual {p0, p1}, Lcom/android/server/input/KeyboardLayoutManager;->getInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Landroid/view/InputDevice;

    move-result-object p1

    if-eqz p1, :cond_1e

    .line 512
    invoke-virtual {p1}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p1}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_1e

    .line 515
    :cond_13
    new-instance v0, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;-><init>(Landroid/view/InputDevice;Lcom/android/server/input/KeyboardLayoutManager-IA;)V

    .line 516
    const-string p1, "GLOBAL_OVERRIDE_KEY"

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/input/KeyboardLayoutManager;->setKeyboardLayoutForInputDeviceInternal(Lcom/android/server/input/KeyboardLayoutManager$KeyboardIdentifier;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    :goto_1e
    return-void
.end method

.method public final showConfiguredKeyboardLayoutNotification(Ljava/util/List;)V
    .registers 6

    .line 953
    iget-object v0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 955
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_20

    const p1, 0x1040557

    .line 957
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v1, 0x1040556

    .line 958
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 956
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/input/KeyboardLayoutManager;->showKeyboardLayoutNotification(Ljava/lang/String;Ljava/lang/String;Landroid/view/InputDevice;)V

    return-void

    :cond_20
    const/4 v1, 0x0

    .line 963
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;

    .line 964
    invoke-static {p1}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;->-$$Nest$mgetDeviceId(Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/input/KeyboardLayoutManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v1

    if-eqz v1, :cond_78

    .line 965
    invoke-static {p1}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;->-$$Nest$mhasConfiguredLayouts(Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;)Z

    move-result v2

    if-nez v2, :cond_38

    goto :goto_78

    .line 969
    :cond_38
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 970
    invoke-static {p1}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;->-$$Nest$mgetConfiguredLayouts(Lcom/android/server/input/KeyboardLayoutManager$KeyboardConfiguration;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_45
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_60

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 971
    invoke-virtual {p0, v3}, Lcom/android/server/input/KeyboardLayoutManager;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v3

    if-nez v3, :cond_58

    goto :goto_78

    .line 982
    :cond_58
    invoke-virtual {v3}, Landroid/hardware/input/KeyboardLayout;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_45

    .line 987
    :cond_60
    invoke-virtual {v1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const v3, 0x1040559

    .line 985
    invoke-virtual {v0, v3, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mContext:Landroid/content/Context;

    .line 988
    invoke-virtual {p0, v0, v2}, Lcom/android/server/input/KeyboardLayoutManager;->createConfiguredNotificationText(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 984
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/input/KeyboardLayoutManager;->showKeyboardLayoutNotification(Ljava/lang/String;Ljava/lang/String;Landroid/view/InputDevice;)V

    :cond_78
    :goto_78
    return-void
.end method

.method public final showKeyboardLayoutNotification(Ljava/lang/String;Ljava/lang/String;Landroid/view/InputDevice;)V
    .registers 11

    .line 902
    iget-object v0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-nez v0, :cond_d

    return-void

    .line 908
    :cond_d
    new-instance v3, Landroid/content/Intent;

    const-string v1, "android.settings.HARD_KEYBOARD_SETTINGS"

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_25

    .line 911
    const-string v1, "input_device_identifier"

    invoke-virtual {p3}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object p3

    invoke-virtual {v3, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 912
    const-string p3, "com.android.settings.inputmethod.EXTRA_ENTRYPOINT"

    const/4 v1, 0x0

    invoke-virtual {v3, p3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_25
    const/high16 p3, 0x14200000

    .line 916
    invoke-virtual {v3, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 919
    iget-object v1, p0, Lcom/android/server/input/KeyboardLayoutManager;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v2, 0x0

    const/high16 v4, 0x4000000

    invoke-static/range {v1 .. v6}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p3

    .line 922
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/android/server/input/KeyboardLayoutManager;->mContext:Landroid/content/Context;

    const-string v3, "PHYSICAL_KEYBOARD"

    invoke-direct {v1, v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 924
    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 925
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 926
    invoke-virtual {p1, p3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    const p2, 0x10805ea

    .line 927
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mContext:Landroid/content/Context;

    const p2, 0x106001c

    .line 928
    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object p0

    const/4 p1, 0x1

    .line 930
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 931
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    const/16 p1, 0x13

    .line 932
    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 p3, 0x0

    invoke-virtual {v0, p3, p1, p0, p2}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final showMissingKeyboardLayoutNotification()V
    .registers 6

    .line 876
    iget-object v0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10409e8

    .line 877
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 880
    iget-object v2, p0, Lcom/android/server/input/KeyboardLayoutManager;->mConfiguredKeyboards:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_37

    .line 881
    iget-object v2, p0, Lcom/android/server/input/KeyboardLayoutManager;->mConfiguredKeyboards:Landroid/util/SparseArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/input/KeyboardLayoutManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v2

    if-nez v2, :cond_24

    return-void

    .line 888
    :cond_24
    invoke-virtual {v2}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const v4, 0x10409e9

    .line 886
    invoke-virtual {v0, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 885
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/input/KeyboardLayoutManager;->showKeyboardLayoutNotification(Ljava/lang/String;Ljava/lang/String;Landroid/view/InputDevice;)V

    return-void

    :cond_37
    const v2, 0x10409eb

    .line 893
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 892
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/input/KeyboardLayoutManager;->showKeyboardLayoutNotification(Ljava/lang/String;Ljava/lang/String;Landroid/view/InputDevice;)V

    return-void
.end method

.method public systemRunning()V
    .registers 6

    .line 148
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 149
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lcom/android/server/input/KeyboardLayoutManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/input/KeyboardLayoutManager$1;

    invoke-direct {v2, p0}, Lcom/android/server/input/KeyboardLayoutManager$1;-><init>(Lcom/android/server/input/KeyboardLayoutManager;)V

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/input/KeyboardLayoutManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 160
    iget-object v0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 163
    iget-object v0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/input/InputManager;

    .line 164
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    .line 163
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/hardware/input/InputManager;

    .line 165
    iget-object v1, p0, Lcom/android/server/input/KeyboardLayoutManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 167
    iget-object v1, p0, Lcom/android/server/input/KeyboardLayoutManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    .line 168
    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v0

    .line 167
    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 169
    iget-object p0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final updateKeyboardLayouts()V
    .registers 4

    .line 261
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 262
    new-instance v1, Lcom/android/server/input/KeyboardLayoutManager$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0}, Lcom/android/server/input/KeyboardLayoutManager$$ExternalSyntheticLambda5;-><init>(Ljava/util/HashSet;)V

    invoke-virtual {p0, v1}, Lcom/android/server/input/KeyboardLayoutManager;->visitAllKeyboardLayouts(Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutVisitor;)V

    .line 266
    iget-object v1, p0, Lcom/android/server/input/KeyboardLayoutManager;->mAvailableLayouts:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    return-void

    .line 269
    :cond_16
    iput-object v0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mAvailableLayouts:Ljava/util/HashSet;

    .line 271
    iget-object v1, p0, Lcom/android/server/input/KeyboardLayoutManager;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v1

    .line 273
    :try_start_1b
    iget-object v2, p0, Lcom/android/server/input/KeyboardLayoutManager;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v2, v0}, Lcom/android/server/input/PersistentDataStore;->removeUninstalledKeyboardLayouts(Ljava/util/Set;)Z
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_38

    .line 275
    :try_start_20
    iget-object v0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 277
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_36

    .line 279
    iget-object v0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mKeyboardLayoutCache:Ljava/util/Map;

    monitor-enter v0

    .line 282
    :try_start_29
    iget-object v1, p0, Lcom/android/server/input/KeyboardLayoutManager;->mKeyboardLayoutCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 283
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_29 .. :try_end_2f} :catchall_33

    .line 286
    invoke-virtual {p0}, Lcom/android/server/input/KeyboardLayoutManager;->reloadKeyboardLayouts()V

    return-void

    :catchall_33
    move-exception p0

    .line 283
    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw p0

    :catchall_36
    move-exception p0

    goto :goto_3f

    :catchall_38
    move-exception v0

    .line 275
    :try_start_39
    iget-object p0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->saveIfNeeded()V

    .line 276
    throw v0

    .line 277
    :goto_3f
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_36

    throw p0
.end method

.method public final visitAllKeyboardLayouts(Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutVisitor;)V
    .registers 9

    .line 330
    iget-object v0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 331
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.input.action.QUERY_KEYBOARD_LAYOUTS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0xc0080

    const/4 v3, 0x0

    .line 332
    invoke-virtual {v2, v0, v1, v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_19
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    if-eqz v1, :cond_19

    .line 335
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v3, :cond_2c

    goto :goto_19

    .line 339
    :cond_2c
    iget v5, v1, Landroid/content/pm/ResolveInfo;->priority:I

    const/4 v4, 0x0

    move-object v1, p0

    move-object v6, p1

    .line 340
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/input/KeyboardLayoutManager;->visitKeyboardLayoutsInPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutVisitor;)V

    goto :goto_19

    :cond_35
    return-void
.end method

.method public final visitKeyboardLayout(Ljava/lang/String;Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutVisitor;)V
    .registers 10

    .line 346
    invoke-static {p1}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutDescriptor;->parse(Ljava/lang/String;)Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutDescriptor;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 348
    iget-object v0, p0, Lcom/android/server/input/KeyboardLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 350
    :try_start_c
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutDescriptor;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutDescriptor;->receiverName:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0xc0080

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 355
    iget-object v4, p1, Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutDescriptor;->keyboardLayoutName:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/input/KeyboardLayoutManager;->visitKeyboardLayoutsInPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutVisitor;)V
    :try_end_24
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_24} :catch_24

    :catch_24
    :cond_24
    return-void
.end method

.method public final visitKeyboardLayoutsInPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutVisitor;)V
    .registers 24

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 363
    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v3, :cond_b

    return-void

    .line 368
    :cond_b
    const-string v4, "android.hardware.input.metadata.KEYBOARD_LAYOUTS"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 369
    const-string v4, "/"

    const-string v5, "KeyboardLayoutManager"

    if-nez v3, :cond_36

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing meta-data \'android.hardware.input.metadata.KEYBOARD_LAYOUTS\' on receiver "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 375
    :cond_36
    invoke-virtual {v1, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_42

    .line 376
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_40
    move-object v10, v6

    goto :goto_45

    :cond_42
    const-string v6, ""

    goto :goto_40

    .line 378
    :goto_45
    iget-object v6, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v8, 0x1

    and-int/2addr v7, v8

    const/4 v9, 0x0

    if-eqz v7, :cond_51

    move/from16 v11, p4

    goto :goto_52

    :cond_51
    move v11, v9

    .line 385
    :goto_52
    :try_start_52
    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0

    .line 386
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_5a} :catch_6c

    .line 387
    :try_start_5a
    const-string v6, "keyboard-layouts"

    invoke-static {v3, v6}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 390
    :goto_5f
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 391
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6
    :try_end_66
    .catchall {:try_start_5a .. :try_end_66} :catchall_111

    if-nez v6, :cond_6f

    .line 441
    :try_start_68
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6b} :catch_6c

    return-void

    :catch_6c
    move-exception v0

    goto/16 :goto_156

    .line 395
    :cond_6f
    :try_start_6f
    const-string v7, "keyboard-layout"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_115

    .line 396
    sget-object v6, Lcom/android/internal/R$styleable;->KeyboardLayout:[I

    invoke-virtual {v0, v3, v6}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6
    :try_end_7d
    .catchall {:try_start_6f .. :try_end_7d} :catchall_111

    .line 399
    :try_start_7d
    invoke-virtual {v6, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 401
    invoke-virtual {v6, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x2

    .line 403
    invoke-virtual {v6, v13, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    const/4 v14, 0x3

    .line 406
    invoke-virtual {v6, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 408
    invoke-static {v14}, Lcom/android/server/input/KeyboardLayoutManager;->getLocalesFromLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v14

    const/4 v15, 0x4

    .line 409
    invoke-virtual {v6, v15, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    const/4 v8, 0x6

    const/4 v9, -0x1

    .line 411
    invoke-virtual {v6, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8
    :try_end_9e
    .catchall {:try_start_7d .. :try_end_9e} :catchall_10a

    move-object/from16 p1, v3

    const/4 v3, 0x5

    .line 413
    :try_start_a1
    invoke-virtual {v6, v3, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    if-eqz v7, :cond_ab

    if-eqz v12, :cond_ab

    if-nez v13, :cond_b2

    :cond_ab
    move-object/from16 v8, p5

    const/16 v16, 0x1

    const/16 v17, 0x0

    goto :goto_e5

    .line 422
    :cond_b2
    iget-object v9, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move/from16 p4, v3

    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v9, v3, v7}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutDescriptor;->format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_ce

    .line 424
    invoke-virtual {v7, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c5

    goto :goto_ce

    :cond_c5
    move-object/from16 v8, p5

    const/16 v16, 0x1

    const/16 v17, 0x0

    goto :goto_103

    :catchall_cc
    move-exception v0

    goto :goto_10d

    .line 425
    :cond_ce
    :goto_ce
    new-instance v7, Landroid/hardware/input/KeyboardLayout;

    move-object v9, v12

    move-object v12, v14

    const/16 v16, 0x1

    const/16 v17, 0x0

    move v14, v8

    move-object v8, v3

    move v3, v13

    move v13, v15

    move/from16 v15, p4

    invoke-direct/range {v7 .. v15}, Landroid/hardware/input/KeyboardLayout;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/LocaleList;III)V

    move-object/from16 v8, p5

    .line 428
    invoke-interface {v8, v0, v3, v7}, Lcom/android/server/input/KeyboardLayoutManager$KeyboardLayoutVisitor;->visitKeyboardLayout(Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V

    goto :goto_103

    .line 417
    :goto_e5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Missing required \'name\', \'label\' or \'keyboardLayout\' attributes in keyboard layout resource from receiver "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_103
    .catchall {:try_start_a1 .. :try_end_103} :catchall_cc

    .line 433
    :goto_103
    :try_start_103
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_143

    :catchall_107
    move-exception v0

    :goto_108
    move-object v2, v0

    goto :goto_14b

    :catchall_10a
    move-exception v0

    move-object/from16 p1, v3

    :goto_10d
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 434
    throw v0

    :catchall_111
    move-exception v0

    move-object/from16 p1, v3

    goto :goto_108

    :cond_115
    move-object/from16 p1, v3

    move/from16 v16, v8

    move/from16 v17, v9

    move-object/from16 v8, p5

    .line 436
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping unrecognized element \'"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\' in keyboard layout resource from receiver "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_143
    .catchall {:try_start_103 .. :try_end_143} :catchall_107

    :goto_143
    move-object/from16 v3, p1

    move/from16 v8, v16

    move/from16 v9, v17

    goto/16 :goto_5f

    :goto_14b
    if-eqz p1, :cond_155

    .line 386
    :try_start_14d
    invoke-interface/range {p1 .. p1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_150
    .catchall {:try_start_14d .. :try_end_150} :catchall_151

    goto :goto_155

    :catchall_151
    move-exception v0

    :try_start_152
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_155
    :goto_155
    throw v2
    :try_end_156
    .catch Ljava/lang/Exception; {:try_start_152 .. :try_end_156} :catch_6c

    .line 443
    :goto_156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse keyboard layout resource from receiver "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
