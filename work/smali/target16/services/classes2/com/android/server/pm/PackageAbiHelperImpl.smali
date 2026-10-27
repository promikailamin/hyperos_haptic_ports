.class public final Lcom/android/server/pm/PackageAbiHelperImpl;
.super Ljava/lang/Object;
.source "PackageAbiHelperImpl.java"

# interfaces
.implements Lcom/android/server/pm/PackageAbiHelper;


# static fields
.field public static sNativelySupported32BitAbis:[Ljava/lang/String;

.field public static sNativelySupported64BitAbis:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateBundledApkRoot(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 66
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_15

    .line 69
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object p0

    goto/16 :goto_f3

    .line 70
    :cond_15
    invoke-static {}, Landroid/os/Environment;->getOemDirectory()Ljava/io/File;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 71
    invoke-static {}, Landroid/os/Environment;->getOemDirectory()Ljava/io/File;

    move-result-object p0

    goto/16 :goto_f3

    .line 72
    :cond_25
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_35

    .line 73
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object p0

    goto/16 :goto_f3

    .line 74
    :cond_35
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_45

    .line 75
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object p0

    goto/16 :goto_f3

    .line 76
    :cond_45
    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_55

    .line 77
    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object p0

    goto/16 :goto_f3

    .line 78
    :cond_55
    invoke-static {}, Landroid/os/Environment;->getSystemExtDirectory()Ljava/io/File;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_65

    .line 79
    invoke-static {}, Landroid/os/Environment;->getSystemExtDirectory()Ljava/io/File;

    move-result-object p0

    goto/16 :goto_f3

    .line 80
    :cond_65
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_75

    .line 81
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object p0

    goto/16 :goto_f3

    .line 82
    :cond_75
    invoke-static {}, Landroid/os/Environment;->getApexDirectory()Ljava/io/File;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    const-string v1, "Can\'t canonicalize code path "

    const-string v2, "PackageManager"

    if-eqz p0, :cond_c6

    .line 83
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 84
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 85
    array-length v4, p0

    const/4 v5, 0x2

    if-le v4, v5, :cond_af

    .line 86
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    aget-object v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p0, v5

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object p0, v0

    goto :goto_f3

    .line 88
    :cond_af
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-static {}, Landroid/os/Environment;->getApexDirectory()Ljava/io/File;

    move-result-object p0

    goto :goto_f3

    .line 95
    :cond_c6
    :try_start_c6
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p0

    .line 96
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 98
    :goto_ce
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_d7

    move-object p0, v3

    move-object v3, v4

    goto :goto_ce

    .line 103
    :cond_d7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecognized code path "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " - using "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f3
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_f3} :catch_f8

    .line 111
    :goto_f3
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 107
    :catch_f8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static deriveCodePathName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 121
    :cond_4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 123
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_14

    return-object v2

    .line 125
    :cond_14
    const-string v1, ".apk"

    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_41

    const-string v1, ".tmp"

    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    goto :goto_41

    .line 129
    :cond_25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Odd, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " doesn\'t look like an APK"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "PackageManager"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_41
    :goto_41
    const/16 p0, 0x2e

    .line 126
    invoke-virtual {v2, p0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    const/4 v0, 0x0

    .line 127
    invoke-virtual {v2, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static deriveNativeLibraryPaths(Lcom/android/server/pm/PackageAbiHelper$Abis;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .registers 11

    .line 164
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p4, :cond_d

    if-nez p5, :cond_d

    move p4, v2

    goto :goto_e

    :cond_d
    move p4, v1

    .line 172
    :goto_e
    invoke-static {v0}, Landroid/content/pm/parsing/ApkLiteParseUtils;->isApkFile(Ljava/io/File;)Z

    move-result p5

    const/4 v3, 0x0

    const-string v4, "lib"

    if-eqz p5, :cond_6a

    if-eqz p4, :cond_5b

    .line 177
    invoke-static {p3}, Lcom/android/server/pm/PackageAbiHelperImpl;->calculateBundledApkRoot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 179
    invoke-static {p0}, Lcom/android/server/pm/InstructionSets;->getPrimaryInstructionSet(Lcom/android/server/pm/PackageAbiHelper$Abis;)Ljava/lang/String;

    move-result-object p3

    .line 178
    invoke-static {p3}, Ldalvik/system/VMRuntime;->is64BitInstructionSet(Ljava/lang/String;)Z

    move-result p3

    .line 184
    invoke-static {p2}, Lcom/android/server/pm/PackageAbiHelperImpl;->deriveCodePathName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 185
    const-string p4, "lib64"

    if-eqz p3, :cond_2f

    move-object p5, p4

    goto :goto_30

    :cond_2f
    move-object p5, v4

    .line 186
    :goto_30
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    filled-new-array {p5, p2}, [Ljava/lang/String;

    move-result-object p5

    invoke-static {v0, p5}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object p5

    .line 187
    invoke-virtual {p5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p5

    .line 189
    iget-object p0, p0, Lcom/android/server/pm/PackageAbiHelper$Abis;->secondary:Ljava/lang/String;

    if-eqz p0, :cond_68

    if-eqz p3, :cond_48

    goto :goto_49

    :cond_48
    move-object v4, p4

    .line 191
    :goto_49
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    filled-new-array {v4, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 192
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    goto :goto_68

    .line 197
    :cond_5b
    invoke-static {p2}, Lcom/android/server/pm/PackageAbiHelperImpl;->deriveCodePathName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 198
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 199
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p5

    :cond_68
    :goto_68
    move-object p1, p5

    goto :goto_94

    .line 207
    :cond_6a
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p5

    .line 210
    new-instance p1, Ljava/io/File;

    .line 211
    invoke-static {p0}, Lcom/android/server/pm/InstructionSets;->getPrimaryInstructionSet(Lcom/android/server/pm/PackageAbiHelper$Abis;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p5, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 213
    iget-object p2, p0, Lcom/android/server/pm/PackageAbiHelper$Abis;->secondary:Ljava/lang/String;

    if-eqz p2, :cond_93

    .line 214
    new-instance p2, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/pm/PackageAbiHelper$Abis;->secondary:Ljava/lang/String;

    .line 215
    invoke-static {p0}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    :cond_93
    move v1, v2

    .line 220
    :goto_94
    new-instance p0, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    invoke-direct {p0, p5, v1, p1, v3}, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static getNativelySupported32BitAbis()[Ljava/lang/String;
    .registers 1

    .line 330
    sget-object v0, Lcom/android/server/pm/PackageAbiHelperImpl;->sNativelySupported32BitAbis:[Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    .line 334
    :cond_5
    sget-object v0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/pm/PackageAbiHelperImpl;->getNativelySupportedAbis([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PackageAbiHelperImpl;->sNativelySupported32BitAbis:[Ljava/lang/String;

    return-object v0
.end method

.method public static getNativelySupported64BitAbis()[Ljava/lang/String;
    .registers 1

    .line 339
    sget-object v0, Lcom/android/server/pm/PackageAbiHelperImpl;->sNativelySupported64BitAbis:[Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    .line 343
    :cond_5
    sget-object v0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/pm/PackageAbiHelperImpl;->getNativelySupportedAbis([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PackageAbiHelperImpl;->sNativelySupported64BitAbis:[Ljava/lang/String;

    return-object v0
.end method

.method public static getNativelySupportedAbis([Ljava/lang/String;)[Ljava/lang/String;
    .registers 8

    .line 317
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 318
    :goto_7
    array-length v3, p0

    if-ge v2, v3, :cond_32

    .line 319
    aget-object v3, p0, v2

    .line 321
    invoke-static {v3}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 322
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ro.dalvik.vm.isa."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 323
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 326
    :cond_32
    new-array p0, v1, [Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static maybeThrowExceptionForMultiArchCopy(Ljava/lang/String;IZ)V
    .registers 5

    if-gez p1, :cond_20

    const/16 v0, -0x72

    const/16 v1, -0x71

    if-eq p1, v0, :cond_11

    if-ne p1, v1, :cond_b

    goto :goto_11

    .line 139
    :cond_b
    new-instance p2, Lcom/android/server/pm/PackageManagerException;

    invoke-direct {p2, p1, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p2

    :cond_11
    :goto_11
    if-eqz p2, :cond_20

    if-eq p1, v1, :cond_16

    goto :goto_20

    .line 143
    :cond_16
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const/16 p1, -0x83

    const-string p2, "The multiArch app\'s native libs don\'t support all the natively supported ABIs of the device."

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_20
    :goto_20
    return-void
.end method


# virtual methods
.method public checkPackageAlignment(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;ZLjava/lang/String;)Lcom/android/internal/content/NativeLibraryHelper$AlignmentResult;
    .registers 5

    .line 636
    :try_start_0
    invoke-static {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->createNativeLibraryHandle(Lcom/android/server/pm/pkg/AndroidPackage;)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object p0

    .line 637
    invoke-static {p0, p2, p3, p4}, Lcom/android/internal/content/NativeLibraryHelper;->checkAlignmentForCompatMode(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/lang/String;ZLjava/lang/String;)Lcom/android/internal/content/NativeLibraryHelper$AlignmentResult;

    move-result-object p0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    .line 640
    :catch_9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to check alignment of package : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 640
    const-string p1, "PackageManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public deriveNativeLibraryPaths(Lcom/android/server/pm/pkg/AndroidPackage;ZZLjava/io/File;)Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;
    .registers 11

    .line 156
    new-instance v0, Lcom/android/server/pm/PackageAbiHelper$Abis;

    invoke-static {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawPrimaryCpuAbi(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object p0

    .line 157
    invoke-static {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawSecondaryCpuAbi(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/PackageAbiHelper$Abis;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 158
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v3

    move v4, p2

    move v5, p3

    move-object v1, p4

    .line 156
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/PackageAbiHelperImpl;->deriveNativeLibraryPaths(Lcom/android/server/pm/PackageAbiHelper$Abis;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    move-result-object p0

    return-object p0
.end method

.method public derivePackageAbi(Lcom/android/server/pm/pkg/AndroidPackage;ZZLjava/lang/String;Ljava/io/File;)Landroid/util/Pair;
    .registers 25

    .line 354
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawPrimaryCpuAbi(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v0

    .line 355
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawSecondaryCpuAbi(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v1

    .line 356
    new-instance v2, Lcom/android/server/pm/PackageAbiHelper$Abis;

    invoke-direct {v2, v0, v1}, Lcom/android/server/pm/PackageAbiHelper$Abis;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 359
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v5

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v3, p5

    .line 356
    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/PackageAbiHelperImpl;->deriveNativeLibraryPaths(Lcom/android/server/pm/PackageAbiHelper$Abis;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    move-result-object v0

    .line 362
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/pm/PackageAbiHelperImpl;->shouldExtractLibs(Lcom/android/server/pm/pkg/AndroidPackage;ZZ)Z

    move-result v1

    .line 364
    iget-object v2, v0, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->nativeLibraryRootDir:Ljava/lang/String;

    .line 365
    iget-boolean v0, v0, Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;->nativeLibraryRootRequiresIsa:Z

    .line 366
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v3

    .line 373
    :try_start_2f
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->createNativeLibraryHandle(Lcom/android/server/pm/pkg/AndroidPackage;)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object v5
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_33} :catch_1b9
    .catchall {:try_start_2f .. :try_end_33} :catchall_1b6

    .line 380
    :try_start_33
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 385
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isMultiArch()Z

    move-result v2
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_3c} :catch_5f
    .catchall {:try_start_33 .. :try_end_3c} :catchall_5b

    const-string v7, "findSupportedAbi"

    const-string v8, "copyNativeBinaries"

    const/16 v9, -0x6e

    const-wide/32 v13, 0x40000

    if-eqz v2, :cond_123

    .line 390
    :try_start_47
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v2

    const/16 v15, 0x23

    if-lt v2, v15, :cond_53

    if-nez p4, :cond_53

    const/4 v2, 0x1

    goto :goto_54

    :cond_53
    const/4 v2, 0x0

    :goto_54
    if-eqz v2, :cond_63

    .line 393
    invoke-static {}, Lcom/android/server/pm/PackageAbiHelperImpl;->getNativelySupported32BitAbis()[Ljava/lang/String;

    move-result-object v15

    goto :goto_65

    :catchall_5b
    move-exception v0

    move-object v4, v5

    goto/16 :goto_1f8

    :catch_5f
    move-exception v0

    const/4 v1, 0x0

    goto/16 :goto_1bc

    .line 394
    :cond_63
    sget-object v15, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    :goto_65
    if-eqz v2, :cond_6e

    .line 395
    invoke-static {}, Lcom/android/server/pm/PackageAbiHelperImpl;->getNativelySupported64BitAbis()[Ljava/lang/String;

    move-result-object v16

    :goto_6b
    move-object/from16 v4, v16

    goto :goto_71

    .line 396
    :cond_6e
    sget-object v16, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    goto :goto_6b

    .line 398
    :goto_71
    array-length v11, v15

    if-lez v11, :cond_78

    const/4 v11, 0x1

    :goto_75
    const/16 v17, 0x0

    goto :goto_7a

    :cond_78
    const/4 v11, 0x0

    goto :goto_75

    .line 399
    :goto_7a
    array-length v12, v4

    if-lez v12, :cond_7f

    const/4 v12, 0x1

    goto :goto_81

    :cond_7f
    move/from16 v12, v17

    :goto_81
    if-eqz v11, :cond_9a

    if-eqz v1, :cond_8d

    .line 405
    invoke-static {v13, v14, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 406
    invoke-static {v5, v6, v15, v0, v3}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;[Ljava/lang/String;ZZ)I

    move-result v18

    goto :goto_94

    .line 410
    :cond_8d
    invoke-static {v13, v14, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 411
    invoke-static {v5, v15}, Lcom/android/internal/content/NativeLibraryHelper;->findSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)I

    move-result v18

    .line 414
    :goto_94
    invoke-static {v13, v14}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_97} :catch_5f
    .catchall {:try_start_47 .. :try_end_97} :catchall_5b

    move/from16 v10, v18

    goto :goto_9c

    :cond_9a
    const/16 v10, -0x72

    .line 418
    :goto_9c
    const-string v13, "Shared library native lib extraction not supported"

    if-ltz v10, :cond_af

    :try_start_a0
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->isLibrary(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v14

    if-eqz v14, :cond_af

    if-nez v1, :cond_a9

    goto :goto_af

    .line 419
    :cond_a9
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    invoke-direct {v0, v9, v13}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 423
    :cond_af
    :goto_af
    const-string v14, "Error unpackaging 32 bit native libs for multiarch app."

    if-eqz v2, :cond_b7

    if-eqz v11, :cond_b7

    const/4 v11, 0x1

    goto :goto_b9

    :cond_b7
    move/from16 v11, v17

    :goto_b9
    invoke-static {v14, v10, v11}, Lcom/android/server/pm/PackageAbiHelperImpl;->maybeThrowExceptionForMultiArchCopy(Ljava/lang/String;IZ)V

    if-eqz v12, :cond_e1

    if-eqz v1, :cond_d0

    move/from16 p4, v10

    const-wide/32 v9, 0x40000

    .line 429
    invoke-static {v9, v10, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 430
    invoke-static {v5, v6, v4, v0, v3}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;[Ljava/lang/String;ZZ)I

    move-result v0

    const-wide/32 v9, 0x40000

    goto :goto_dc

    :cond_d0
    move/from16 p4, v10

    const-wide/32 v9, 0x40000

    .line 434
    invoke-static {v9, v10, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 435
    invoke-static {v5, v4}, Lcom/android/internal/content/NativeLibraryHelper;->findSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)I

    move-result v0

    .line 438
    :goto_dc
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    move v10, v0

    goto :goto_e5

    :cond_e1
    move/from16 p4, v10

    const/16 v10, -0x72

    .line 441
    :goto_e5
    const-string v0, "Error unpackaging 64 bit native libs for multiarch app."

    if-eqz v2, :cond_ed

    if-eqz v12, :cond_ed

    const/4 v2, 0x1

    goto :goto_ef

    :cond_ed
    move/from16 v2, v17

    :goto_ef
    invoke-static {v0, v10, v2}, Lcom/android/server/pm/PackageAbiHelperImpl;->maybeThrowExceptionForMultiArchCopy(Ljava/lang/String;IZ)V

    if-ltz v10, :cond_109

    if-eqz v1, :cond_105

    .line 447
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->isLibrary(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v0

    if-nez v0, :cond_fd

    goto :goto_105

    .line 448
    :cond_fd
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/16 v11, -0x6e

    invoke-direct {v0, v11, v13}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 451
    :cond_105
    :goto_105
    aget-object v0, v4, v10
    :try_end_107
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_107} :catch_5f
    .catchall {:try_start_a0 .. :try_end_107} :catchall_5b

    move-object v1, v0

    goto :goto_10a

    :cond_109
    const/4 v1, 0x0

    :goto_10a
    if-ltz p4, :cond_120

    .line 455
    :try_start_10c
    aget-object v0, v15, p4

    if-ltz v10, :cond_196

    .line 457
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->is32BitAbiPreferred()Z

    move-result v2
    :try_end_114
    .catch Ljava/io/IOException; {:try_start_10c .. :try_end_114} :catch_11d
    .catchall {:try_start_10c .. :try_end_114} :catchall_5b

    if-eqz v2, :cond_119

    move-object v4, v1

    goto/16 :goto_1b2

    :cond_119
    move-object v4, v0

    move-object v0, v1

    goto/16 :goto_1b2

    :catch_11d
    move-exception v0

    goto/16 :goto_1bc

    :cond_120
    move-object v0, v1

    goto/16 :goto_196

    :cond_123
    const/16 v17, 0x0

    if-eqz p4, :cond_12c

    .line 469
    :try_start_127
    filled-new-array/range {p4 .. p4}, [Ljava/lang/String;

    move-result-object v2

    goto :goto_12e

    :cond_12c
    sget-object v2, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 481
    :goto_12e
    sget-object v4, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_14d

    if-nez p4, :cond_14d

    .line 482
    invoke-static {v5}, Lcom/android/internal/content/NativeLibraryHelper;->hasRenderscriptBitcode(Lcom/android/internal/content/NativeLibraryHelper$Handle;)Z

    move-result v4

    if-eqz v4, :cond_14d

    .line 483
    sget-object v2, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    array-length v4, v2

    if-lez v4, :cond_143

    const/16 v16, 0x1

    goto :goto_14f

    .line 487
    :cond_143
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Apps that contain RenderScript with target API level < 21 are not supported on 64-bit only platforms"

    const/16 v2, -0x10

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_14d
    move/from16 v16, v17

    :goto_14f
    if-eqz v1, :cond_15f

    const-wide/32 v9, 0x40000

    .line 496
    invoke-static {v9, v10, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 497
    invoke-static {v5, v6, v2, v0, v3}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesForSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;[Ljava/lang/String;ZZ)I

    move-result v0

    const-wide/32 v9, 0x40000

    goto :goto_169

    :cond_15f
    const-wide/32 v9, 0x40000

    .line 500
    invoke-static {v9, v10, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 501
    invoke-static {v5, v2}, Lcom/android/internal/content/NativeLibraryHelper;->findSupportedAbi(Lcom/android/internal/content/NativeLibraryHelper$Handle;[Ljava/lang/String;)I

    move-result v0

    .line 503
    :goto_169
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    if-gez v0, :cond_18c

    const/16 v1, -0x72

    if-ne v0, v1, :cond_173

    goto :goto_18c

    .line 506
    :cond_173
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error unpackaging native libs for app, errorCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v11, -0x6e

    invoke-direct {v1, v11, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_18c
    :goto_18c
    if-ltz v0, :cond_1a2

    .line 512
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->isLibrary(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result v1

    if-nez v1, :cond_198

    .line 516
    aget-object v0, v2, v0

    :cond_196
    :goto_196
    const/4 v4, 0x0

    goto :goto_1b2

    .line 513
    :cond_198
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Shared library with native libs must be multiarch"

    const/16 v11, -0x6e

    invoke-direct {v0, v11, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1a2
    const/16 v1, -0x72

    if-ne v0, v1, :cond_1ab

    if-eqz p4, :cond_1ab

    move-object/from16 v0, p4

    goto :goto_196

    :cond_1ab
    if-eqz v16, :cond_1b0

    .line 521
    aget-object v0, v2, v17
    :try_end_1af
    .catch Ljava/io/IOException; {:try_start_127 .. :try_end_1af} :catch_5f
    .catchall {:try_start_127 .. :try_end_1af} :catchall_5b

    goto :goto_196

    :cond_1b0
    const/4 v0, 0x0

    goto :goto_196

    .line 527
    :goto_1b2
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1db

    :catchall_1b6
    move-exception v0

    const/4 v4, 0x0

    goto :goto_1f8

    :catch_1b9
    move-exception v0

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 525
    :goto_1bc
    :try_start_1bc
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to get canonical file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d6
    .catchall {:try_start_1bc .. :try_end_1d6} :catchall_5b

    .line 527
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v0, v1

    const/4 v4, 0x0

    .line 533
    :goto_1db
    new-instance v1, Lcom/android/server/pm/PackageAbiHelper$Abis;

    invoke-direct {v1, v0, v4}, Lcom/android/server/pm/PackageAbiHelper$Abis;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    new-instance v0, Landroid/util/Pair;

    .line 536
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v4

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v2, p5

    .line 535
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/PackageAbiHelperImpl;->deriveNativeLibraryPaths(Lcom/android/server/pm/PackageAbiHelper$Abis;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/android/server/pm/PackageAbiHelper$NativeLibraryPaths;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 527
    :goto_1f8
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 528
    throw v0
.end method

.method public getAdjustedAbiForSharedUser(Landroid/util/ArraySet;Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;
    .registers 10

    const/4 p0, 0x0

    if-eqz p2, :cond_e

    .line 572
    invoke-static {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawPrimaryCpuAbi(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 574
    invoke-static {v0}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_e
    move-object v0, p0

    .line 579
    :goto_f
    invoke-virtual {p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v1, p0

    :cond_14
    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    if-eqz p2, :cond_31

    .line 584
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 585
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 584
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    goto :goto_14

    .line 588
    :cond_31
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPrimaryCpuAbiLegacy()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_38

    goto :goto_14

    .line 593
    :cond_38
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPrimaryCpuAbiLegacy()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_7a

    .line 594
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7a

    .line 597
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Instruction set mismatch, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_57

    .line 598
    const-string v5, "[caller]"

    goto :goto_58

    :cond_57
    move-object v5, v1

    :goto_58
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " requires "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " whereas "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 601
    const-string v5, "PackageManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7a
    if-nez v0, :cond_14

    move-object v1, v2

    move-object v0, v3

    goto :goto_14

    :cond_7f
    if-nez v0, :cond_82

    return-object p0

    :cond_82
    if-eqz v1, :cond_89

    .line 619
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPrimaryCpuAbiLegacy()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 623
    :cond_89
    invoke-static {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->getRawPrimaryCpuAbi(Lcom/android/server/pm/pkg/AndroidPackage;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getBundledAppAbi(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PackageAbiHelper$Abis;
    .registers 9

    .line 244
    new-instance p0, Ljava/io/File;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 251
    invoke-static {p0}, Landroid/content/pm/parsing/ApkLiteParseUtils;->isApkFile(Ljava/io/File;)Z

    move-result v0

    const-string v1, "lib"

    const/4 v2, 0x0

    if-eqz v0, :cond_39

    .line 253
    new-instance p0, Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v3, "lib64"

    invoke-direct {v0, v3, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    .line 255
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    goto :goto_80

    .line 258
    :cond_39
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 259
    sget-object p0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_5e

    aget-object p3, p0, v2

    .line 260
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_5e

    .line 261
    aget-object p0, p0, v2

    invoke-static {p0}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 262
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p0

    goto :goto_5f

    :cond_5e
    move p0, v2

    .line 266
    :goto_5f
    sget-object p3, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7f

    aget-object v0, p3, v2

    .line 267
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7f

    .line 268
    aget-object p3, p3, v2

    invoke-static {p3}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 269
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    goto :goto_80

    :cond_7f
    move p2, v2

    :goto_80
    const/4 p3, 0x0

    if-eqz p0, :cond_8d

    if-nez p2, :cond_8d

    .line 280
    sget-object p0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    aget-object p0, p0, v2

    :goto_89
    move-object v4, p3

    move-object p3, p0

    move-object p0, v4

    goto :goto_d8

    :cond_8d
    if-eqz p2, :cond_96

    if-nez p0, :cond_96

    .line 286
    sget-object p0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    aget-object p0, p0, v2

    goto :goto_89

    :cond_96
    if-eqz p2, :cond_d7

    if-eqz p0, :cond_d7

    .line 296
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isMultiArch()Z

    move-result p0

    if-nez p0, :cond_bb

    .line 297
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Package "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " has multiple bundled libs, but is not multiarch."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_bb
    invoke-static {}, Lcom/android/server/pm/InstructionSets;->getPreferredInstructionSet()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ldalvik/system/VMRuntime;->is64BitInstructionSet(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_ce

    .line 302
    sget-object p0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    aget-object p3, p0, v2

    .line 303
    sget-object p0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    aget-object p0, p0, v2

    goto :goto_d8

    .line 305
    :cond_ce
    sget-object p0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    aget-object p3, p0, v2

    .line 306
    sget-object p0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    aget-object p0, p0, v2

    goto :goto_d8

    :cond_d7
    move-object p0, p3

    .line 312
    :goto_d8
    new-instance p1, Lcom/android/server/pm/PackageAbiHelper$Abis;

    invoke-direct {p1, p3, p0}, Lcom/android/server/pm/PackageAbiHelper$Abis;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public getBundledAppAbis(Lcom/android/server/pm/pkg/AndroidPackage;)Lcom/android/server/pm/PackageAbiHelper$Abis;
    .registers 4

    .line 226
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/PackageAbiHelperImpl;->deriveCodePathName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 230
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseApkPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/pm/PackageAbiHelperImpl;->calculateBundledApkRoot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 231
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/pm/PackageAbiHelperImpl;->getBundledAppAbi(Lcom/android/server/pm/pkg/AndroidPackage;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PackageAbiHelper$Abis;

    move-result-object p0

    return-object p0
.end method

.method public final shouldExtractLibs(Lcom/android/server/pm/pkg/AndroidPackage;ZZ)Z
    .registers 5

    .line 543
    invoke-static {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->isLibrary(Lcom/android/server/pm/pkg/AndroidPackage;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_f

    .line 544
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isExtractNativeLibrariesRequested()Z

    move-result p0

    if-eqz p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    move p0, v0

    :goto_10
    if-eqz p2, :cond_15

    if-nez p3, :cond_15

    return v0

    :cond_15
    return p0
.end method
