.class public Lcom/android/server/app/GameManagerService$GamePackageConfiguration;
.super Ljava/lang/Object;
.source "GameManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/app/GameManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GamePackageConfiguration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;
    }
.end annotation


# static fields
.field private static final GAME_MODE_CONFIG_NODE_NAME:Ljava/lang/String; = "game-mode-config"

.field public static final METADATA_ANGLE_ALLOW_ANGLE:Ljava/lang/String; = "com.android.graphics.intervention.angle.allowAngle"

.field public static final METADATA_BATTERY_MODE_ENABLE:Ljava/lang/String; = "com.android.app.gamemode.battery.enabled"

.field public static final METADATA_GAME_MODE_CONFIG:Ljava/lang/String; = "android.game_mode_config"

.field public static final METADATA_PERFORMANCE_MODE_ENABLE:Ljava/lang/String; = "com.android.app.gamemode.performance.enabled"

.field public static final METADATA_WM_ALLOW_DOWNSCALE:Ljava/lang/String; = "com.android.graphics.intervention.wm.allowDownscale"

.field public static final TAG:Ljava/lang/String; = "GameManagerService_GamePackageConfiguration"


# instance fields
.field private mAllowAngle:Z

.field private mAllowDownscale:Z

.field private mAllowFpsOverride:Z

.field private mBatteryModeOptedIn:Z

.field private final mModeConfigs:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageName:Ljava/lang/String;

.field private mPerfModeOptedIn:Z

.field final synthetic this$0:Lcom/android/server/app/GameManagerService;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAllowAngle(Lcom/android/server/app/GameManagerService$GamePackageConfiguration;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mAllowAngle:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAllowDownscale(Lcom/android/server/app/GameManagerService$GamePackageConfiguration;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mAllowDownscale:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAllowFpsOverride(Lcom/android/server/app/GameManagerService$GamePackageConfiguration;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mAllowFpsOverride:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetAvailableGameModesBitfield(Lcom/android/server/app/GameManagerService$GamePackageConfiguration;)I
    .registers 1

    invoke-direct {p0}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getAvailableGameModesBitfield()I

    move-result p0

    return p0
.end method

.method constructor <init>(Lcom/android/server/app/GameManagerService;Ljava/lang/String;I)V
    .registers 12
    .param p1, "this$0"    # Lcom/android/server/app/GameManagerService;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 491
    const-string v0, "GameManagerService_GamePackageConfiguration"

    iput-object p1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 492
    iput-object p2, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mPackageName:Ljava/lang/String;

    .line 493
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mModeConfigs:Landroid/util/ArrayMap;

    .line 495
    const/4 v1, 0x0

    :try_start_11
    invoke-static {p1}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmPackageManager(Lcom/android/server/app/GameManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, p2, v3, p3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 497
    .local v2, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-direct {p0, v2, p2}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->parseInterventionFromXml(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_59

    .line 498
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const/4 v4, 0x1

    if-eqz v3, :cond_4f

    .line 499
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "com.android.app.gamemode.performance.enabled"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mPerfModeOptedIn:Z

    .line 500
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "com.android.app.gamemode.battery.enabled"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mBatteryModeOptedIn:Z

    .line 501
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "com.android.graphics.intervention.wm.allowDownscale"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mAllowDownscale:Z

    .line 502
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "com.android.graphics.intervention.angle.allowAngle"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mAllowAngle:Z

    goto :goto_59

    .line 504
    :cond_4f
    iput-boolean v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mPerfModeOptedIn:Z

    .line 505
    iput-boolean v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mBatteryModeOptedIn:Z

    .line 506
    iput-boolean v4, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mAllowDownscale:Z

    .line 507
    iput-boolean v4, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mAllowAngle:Z

    .line 508
    iput-boolean v4, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mAllowFpsOverride:Z
    :try_end_59
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11 .. :try_end_59} :catch_5a

    .line 514
    .end local v2    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_59
    :goto_59
    goto :goto_60

    .line 511
    :catch_5a
    move-exception v2

    .line 513
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "Failed to get package metadata"

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_60
    const-string v2, "game_overlay"

    invoke-static {v2, p2}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 517
    .local v2, "configString":Ljava/lang/String;
    if-eqz v2, :cond_8f

    .line 518
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 519
    .local v3, "gameModeConfigStrings":[Ljava/lang/String;
    array-length v4, v3

    :goto_6f
    if-ge v1, v4, :cond_8f

    aget-object v5, v3, v1

    .line 521
    .local v5, "gameModeConfigString":Ljava/lang/String;
    :try_start_73
    new-instance v6, Landroid/util/KeyValueListParser;

    const/16 v7, 0x2c

    invoke-direct {v6, v7}, Landroid/util/KeyValueListParser;-><init>(C)V

    .line 522
    .local v6, "parser":Landroid/util/KeyValueListParser;
    invoke-virtual {v6, v5}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V

    .line 523
    new-instance v7, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    invoke-direct {v7, p0, v6}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;-><init>(Lcom/android/server/app/GameManagerService$GamePackageConfiguration;Landroid/util/KeyValueListParser;)V

    invoke-virtual {p0, v7}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->addModeConfig(Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;)V
    :try_end_85
    .catch Ljava/lang/IllegalArgumentException; {:try_start_73 .. :try_end_85} :catch_86

    .line 526
    .end local v6    # "parser":Landroid/util/KeyValueListParser;
    goto :goto_8c

    .line 524
    :catch_86
    move-exception v6

    .line 525
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    const-string v7, "Invalid config string"

    invoke-static {v0, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    .end local v5    # "gameModeConfigString":Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :goto_8c
    add-int/lit8 v1, v1, 0x1

    goto :goto_6f

    .line 529
    .end local v3    # "gameModeConfigStrings":[Ljava/lang/String;
    :cond_8f
    return-void
.end method

.method private getAvailableGameModesBitfield()I
    .registers 5

    .line 691
    const/4 v0, 0x0

    .line 692
    .local v0, "field":I
    iget-object v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mModeConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 693
    .local v2, "mode":I
    iget-object v3, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v3, v2}, Lcom/android/server/app/GameManagerService;->-$$Nest$mmodeToBitmask(Lcom/android/server/app/GameManagerService;I)I

    move-result v3

    or-int/2addr v0, v3

    .line 694
    .end local v2    # "mode":I
    goto :goto_b

    .line 695
    :cond_23
    iget-boolean v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mBatteryModeOptedIn:Z

    if-eqz v1, :cond_2f

    .line 696
    iget-object v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->this$0:Lcom/android/server/app/GameManagerService;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/android/server/app/GameManagerService;->-$$Nest$mmodeToBitmask(Lcom/android/server/app/GameManagerService;I)I

    move-result v1

    or-int/2addr v0, v1

    .line 698
    :cond_2f
    iget-boolean v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mPerfModeOptedIn:Z

    if-eqz v1, :cond_3b

    .line 699
    iget-object v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->this$0:Lcom/android/server/app/GameManagerService;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/server/app/GameManagerService;->-$$Nest$mmodeToBitmask(Lcom/android/server/app/GameManagerService;I)I

    move-result v1

    or-int/2addr v0, v1

    .line 703
    :cond_3b
    const/4 v1, 0x1

    if-le v0, v1, :cond_46

    .line 704
    iget-object v2, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v2, v1}, Lcom/android/server/app/GameManagerService;->-$$Nest$mmodeToBitmask(Lcom/android/server/app/GameManagerService;I)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_4e

    .line 706
    :cond_46
    iget-object v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->this$0:Lcom/android/server/app/GameManagerService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/app/GameManagerService;->-$$Nest$mmodeToBitmask(Lcom/android/server/app/GameManagerService;I)I

    move-result v1

    or-int/2addr v0, v1

    .line 708
    :goto_4e
    return v0
.end method

.method private parseInterventionFromXml(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z
    .registers 15
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 532
    const-string v0, "GameManagerService_GamePackageConfiguration"

    const/4 v1, 0x0

    .line 533
    .local v1, "xmlFound":Z
    :try_start_3
    iget-object v2, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v2}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmPackageManager(Lcom/android/server/app/GameManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.game_mode_config"

    invoke-virtual {p1, v2, v3}, Landroid/content/pm/ApplicationInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v2
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_f} :catch_93
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_f} :catch_93
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_f} :catch_93

    .line 535
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    if-nez v2, :cond_2a

    .line 536
    :try_start_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No android.game_mode_config meta-data found for package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_81

    .line 539
    :cond_2a
    const/4 v1, 0x1

    .line 540
    iget-object v3, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v3}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmPackageManager(Lcom/android/server/app/GameManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 542
    .local v3, "resources":Landroid/content/res/Resources;
    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    .line 544
    .local v4, "attributeSet":Landroid/util/AttributeSet;
    :goto_39
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    move v6, v5

    .local v6, "type":I
    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v5, v8, :cond_45

    if-eq v6, v7, :cond_45

    goto :goto_39

    .line 549
    :cond_45
    const-string v5, "game-mode-config"

    .line 550
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 551
    .local v5, "isStartingTagGameModeConfig":Z
    if-nez v5, :cond_57

    .line 552
    const-string v7, "Meta-data does not start with game-mode-config tag"

    invoke-static {v0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_81

    .line 556
    :cond_57
    sget-object v9, Lcom/android/internal/R$styleable;->GameModeConfig:[I

    invoke-virtual {v3, v4, v9}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 558
    .local v9, "array":Landroid/content/res/TypedArray;
    const/4 v10, 0x0

    invoke-virtual {v9, v8, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mPerfModeOptedIn:Z

    .line 560
    invoke-virtual {v9, v10, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mBatteryModeOptedIn:Z

    .line 563
    const/4 v10, 0x3

    invoke-virtual {v9, v10, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mAllowDownscale:Z

    .line 565
    invoke-virtual {v9, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mAllowAngle:Z

    .line 566
    const/4 v7, 0x4

    invoke-virtual {v9, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mAllowFpsOverride:Z

    .line 568
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_81
    .catchall {:try_start_11 .. :try_end_81} :catchall_87

    .line 571
    .end local v3    # "resources":Landroid/content/res/Resources;
    .end local v4    # "attributeSet":Landroid/util/AttributeSet;
    .end local v5    # "isStartingTagGameModeConfig":Z
    .end local v6    # "type":I
    .end local v9    # "array":Landroid/content/res/TypedArray;
    :goto_81
    if-eqz v2, :cond_86

    :try_start_83
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_86
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_83 .. :try_end_86} :catch_93
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_83 .. :try_end_86} :catch_93
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_86} :catch_93

    .line 574
    .end local v2    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_86
    goto :goto_99

    .line 533
    .restart local v2    # "parser":Landroid/content/res/XmlResourceParser;
    :catchall_87
    move-exception v3

    if-eqz v2, :cond_92

    :try_start_8a
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_8d
    .catchall {:try_start_8a .. :try_end_8d} :catchall_8e

    goto :goto_92

    :catchall_8e
    move-exception v4

    :try_start_8f
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "xmlFound":Z
    .end local p0    # "this":Lcom/android/server/app/GameManagerService$GamePackageConfiguration;
    .end local p1    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local p2    # "packageName":Ljava/lang/String;
    :cond_92
    :goto_92
    throw v3
    :try_end_93
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8f .. :try_end_93} :catch_93
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8f .. :try_end_93} :catch_93
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_93} :catch_93

    .line 571
    .end local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v1    # "xmlFound":Z
    .restart local p0    # "this":Lcom/android/server/app/GameManagerService$GamePackageConfiguration;
    .restart local p1    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local p2    # "packageName":Ljava/lang/String;
    :catch_93
    move-exception v2

    .line 572
    .local v2, "ex":Ljava/lang/Exception;
    const-string v3, "Error while parsing XML meta-data for android.game_mode_config"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_99
    return v1
.end method


# virtual methods
.method public addModeConfig(Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;)V
    .registers 4
    .param p1, "config"    # Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    .line 741
    invoke-virtual {p1}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->isValid()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 742
    iget-object v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mModeConfigs:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->getGameMode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3c

    .line 744
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid game mode config for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 745
    invoke-virtual {p1}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 744
    const-string v1, "GameManagerService_GamePackageConfiguration"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    :goto_3c
    return-void
.end method

.method public getAvailableGameModes()[I
    .registers 7

    .line 715
    invoke-direct {p0}, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->getAvailableGameModesBitfield()I

    move-result v0

    .line 716
    .local v0, "modesBitfield":I
    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    new-array v1, v1, [I

    .line 717
    .local v1, "modes":[I
    const/4 v2, 0x0

    .line 718
    .local v2, "i":I
    nop

    .line 719
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    .line 720
    .local v3, "gameModeInHighestBit":I
    const/4 v4, 0x0

    .local v4, "mode":I
    :goto_15
    if-gt v4, v3, :cond_25

    .line 721
    shr-int v5, v0, v4

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_22

    .line 722
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "i":I
    .local v5, "i":I
    aput v4, v1, v2

    move v2, v5

    .line 720
    .end local v5    # "i":I
    .restart local v2    # "i":I
    :cond_22
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 725
    .end local v4    # "mode":I
    :cond_25
    return-object v1
.end method

.method public getGameModeConfiguration(I)Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;
    .registers 4
    .param p1, "gameMode"    # I

    .line 734
    iget-object v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mModeConfigs:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration$GameModeConfiguration;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 674
    iget-object v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .registers 2

    .line 750
    iget-object v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mModeConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-gtz v0, :cond_13

    iget-boolean v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mBatteryModeOptedIn:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mPerfModeOptedIn:Z

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 754
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Modes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mModeConfigs:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public willGamePerformOptimizations(I)Z
    .registers 3
    .param p1, "gameMode"    # I

    .line 686
    iget-boolean v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mBatteryModeOptedIn:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    if-eq p1, v0, :cond_e

    :cond_7
    iget-boolean v0, p0, Lcom/android/server/app/GameManagerService$GamePackageConfiguration;->mPerfModeOptedIn:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x2

    if-ne p1, v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method
