.class public final Lcom/android/server/policy/DeviceStateProviderImpl;
.super Ljava/lang/Object;
.source "DeviceStateProviderImpl.java"

# interfaces
.implements Lcom/android/server/devicestate/DeviceStateProvider;
.implements Landroid/hardware/input/InputManagerInternal$LidSwitchCallback;
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/DeviceStateProviderImpl$ReadableFileConfig;,
        Lcom/android/server/policy/DeviceStateProviderImpl$AndBooleanSupplier;,
        Lcom/android/server/policy/DeviceStateProviderImpl$SensorBooleanSupplier;,
        Lcom/android/server/policy/DeviceStateProviderImpl$LidSwitchBooleanSupplier;,
        Lcom/android/server/policy/DeviceStateProviderImpl$ReadableConfig;
    }
.end annotation


# static fields
.field private static final CONFIG_FILE_NAME:Ljava/lang/String; = "device_state_configuration.xml"

.field private static final DATA_CONFIG_FILE_PATH:Ljava/lang/String; = "system/devicestate/"

.field private static final DEBUG:Z = false

.field static final DEFAULT_DEVICE_STATE:Lcom/android/server/devicestate/DeviceState;

.field private static final FALSE_BOOLEAN_SUPPLIER:Ljava/util/function/BooleanSupplier;

.field private static final FLAG_APP_INACCESSIBLE:Ljava/lang/String; = "FLAG_APP_INACCESSIBLE"

.field private static final FLAG_CANCEL_OVERRIDE_REQUESTS:Ljava/lang/String; = "FLAG_CANCEL_OVERRIDE_REQUESTS"

.field private static final FLAG_TENT_MODE:Ljava/lang/String; = "FLAG_TENT_MODE"

.field private static final MIUI_CONFIG_FILE_PATH:Ljava/lang/String; = "etc/devicestate/"

.field private static final TAG:Ljava/lang/String; = "DeviceStateProviderImpl"

.field private static final TRUE_BOOLEAN_SUPPLIER:Ljava/util/function/BooleanSupplier;

.field private static final VENDOR_CONFIG_FILE_PATH:Ljava/lang/String; = "etc/devicestate/"


# instance fields
.field public volatile mBootAnimationCompleted:Z

.field private final mContext:Landroid/content/Context;

.field private final mFoldSensorDataIndex:I

.field private mInteractive:Z

.field private mIsLidOpen:Ljava/lang/Boolean;

.field private mLastReportedState:I

.field private final mLatestSensorEvent:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/hardware/Sensor;",
            "Landroid/hardware/SensorEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/android/server/devicestate/DeviceStateProvider$Listener;

.field private final mLock:Ljava/lang/Object;

.field private final mOrderedStates:[Lcom/android/server/devicestate/DeviceState;

.field private final mStateConditions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/function/BooleanSupplier;",
            ">;"
        }
    .end annotation
.end field

.field private final mStrictFoldedDeviceStates:[I


# direct methods
.method static bridge synthetic -$$Nest$fgetmFoldSensorDataIndex(Lcom/android/server/policy/DeviceStateProviderImpl;)I
    .registers 1

    iget p0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mFoldSensorDataIndex:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsLidOpen(Lcom/android/server/policy/DeviceStateProviderImpl;)Ljava/lang/Boolean;
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mIsLidOpen:Ljava/lang/Boolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLatestSensorEvent(Lcom/android/server/policy/DeviceStateProviderImpl;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLatestSensorEvent:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/policy/DeviceStateProviderImpl;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 89
    new-instance v0, Lcom/android/server/policy/DeviceStateProviderImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/policy/DeviceStateProviderImpl$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/android/server/policy/DeviceStateProviderImpl;->TRUE_BOOLEAN_SUPPLIER:Ljava/util/function/BooleanSupplier;

    .line 90
    new-instance v0, Lcom/android/server/policy/DeviceStateProviderImpl$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/policy/DeviceStateProviderImpl$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lcom/android/server/policy/DeviceStateProviderImpl;->FALSE_BOOLEAN_SUPPLIER:Ljava/util/function/BooleanSupplier;

    .line 93
    new-instance v0, Lcom/android/server/devicestate/DeviceState;

    const/4 v1, 0x0

    const-string v2, "DEFAULT"

    invoke-direct {v0, v1, v2, v1}, Lcom/android/server/devicestate/DeviceState;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lcom/android/server/policy/DeviceStateProviderImpl;->DEFAULT_DEVICE_STATE:Lcom/android/server/devicestate/DeviceState;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/server/devicestate/DeviceState;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/policy/devicestate/config/Conditions;",
            ">;)V"
        }
    .end annotation

    .line 216
    .local p2, "deviceStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/devicestate/DeviceState;>;"
    .local p3, "stateConditions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/policy/devicestate/config/Conditions;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLock:Ljava/lang/Object;

    .line 198
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mStateConditions:Landroid/util/SparseArray;

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mListener:Lcom/android/server/devicestate/DeviceStateProvider$Listener;

    .line 203
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLastReportedState:I

    .line 208
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLatestSensorEvent:Ljava/util/Map;

    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mInteractive:Z

    .line 217
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v0, 0x0

    :goto_2d
    const-string v1, "Number of device states must be equal to the number of device state conditions."

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 220
    iput-object p1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mContext:Landroid/content/Context;

    .line 222
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/server/devicestate/DeviceState;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/devicestate/DeviceState;

    .line 223
    .local v0, "orderedStates":[Lcom/android/server/devicestate/DeviceState;
    new-instance v1, Lcom/android/server/policy/DeviceStateProviderImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/policy/DeviceStateProviderImpl$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 224
    iput-object v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mOrderedStates:[Lcom/android/server/devicestate/DeviceState;

    .line 226
    invoke-direct {p0, p2, p3}, Lcom/android/server/policy/DeviceStateProviderImpl;->setStateConditions(Ljava/util/List;Ljava/util/List;)V

    .line 229
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e007b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mFoldSensorDataIndex:I

    .line 232
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10700b5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mStrictFoldedDeviceStates:[I

    .line 235
    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/android/server/policy/DeviceStateProviderImpl;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 123
    invoke-static {}, Lcom/android/server/policy/DeviceStateProviderImpl;->getConfigurationFile()Ljava/io/File;

    move-result-object v0

    .line 124
    .local v0, "configFile":Ljava/io/File;
    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 125
    invoke-static {p0, v1}, Lcom/android/server/policy/DeviceStateProviderImpl;->createFromConfig(Landroid/content/Context;Lcom/android/server/policy/DeviceStateProviderImpl$ReadableConfig;)Lcom/android/server/policy/DeviceStateProviderImpl;

    move-result-object v1

    return-object v1

    .line 127
    :cond_c
    new-instance v2, Lcom/android/server/policy/DeviceStateProviderImpl$ReadableFileConfig;

    invoke-direct {v2, v0, v1}, Lcom/android/server/policy/DeviceStateProviderImpl$ReadableFileConfig;-><init>(Ljava/io/File;Lcom/android/server/policy/DeviceStateProviderImpl$ReadableFileConfig-IA;)V

    invoke-static {p0, v2}, Lcom/android/server/policy/DeviceStateProviderImpl;->createFromConfig(Landroid/content/Context;Lcom/android/server/policy/DeviceStateProviderImpl$ReadableConfig;)Lcom/android/server/policy/DeviceStateProviderImpl;

    move-result-object v1

    return-object v1
.end method

.method static createFromConfig(Landroid/content/Context;Lcom/android/server/policy/DeviceStateProviderImpl$ReadableConfig;)Lcom/android/server/policy/DeviceStateProviderImpl;
    .registers 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "readableConfig"    # Lcom/android/server/policy/DeviceStateProviderImpl$ReadableConfig;

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v0, "deviceStateList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/devicestate/DeviceState;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v1, "conditionsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/policy/devicestate/config/Conditions;>;"
    if-eqz p1, :cond_b3

    .line 143
    invoke-static {p1}, Lcom/android/server/policy/DeviceStateProviderImpl;->parseConfig(Lcom/android/server/policy/DeviceStateProviderImpl$ReadableConfig;)Lcom/android/server/policy/devicestate/config/DeviceStateConfig;

    move-result-object v2

    .line 144
    .local v2, "config":Lcom/android/server/policy/devicestate/config/DeviceStateConfig;
    if-eqz v2, :cond_b3

    .line 146
    invoke-virtual {v2}, Lcom/android/server/policy/devicestate/config/DeviceStateConfig;->getDeviceState()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/policy/devicestate/config/DeviceState;

    .line 147
    .local v4, "stateConfig":Lcom/android/server/policy/devicestate/config/DeviceState;
    invoke-virtual {v4}, Lcom/android/server/policy/devicestate/config/DeviceState;->getIdentifier()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    .line 148
    .local v5, "state":I
    invoke-virtual {v4}, Lcom/android/server/policy/devicestate/config/DeviceState;->getName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_37

    const-string v6, ""

    goto :goto_3b

    :cond_37
    invoke-virtual {v4}, Lcom/android/server/policy/devicestate/config/DeviceState;->getName()Ljava/lang/String;

    move-result-object v6

    .line 150
    .local v6, "name":Ljava/lang/String;
    :goto_3b
    const/4 v7, 0x0

    .line 151
    .local v7, "flags":I
    invoke-virtual {v4}, Lcom/android/server/policy/devicestate/config/DeviceState;->getFlags()Lcom/android/server/policy/devicestate/config/Flags;

    move-result-object v8

    .line 152
    .local v8, "configFlags":Lcom/android/server/policy/devicestate/config/Flags;
    if-eqz v8, :cond_a2

    .line 153
    invoke-virtual {v8}, Lcom/android/server/policy/devicestate/config/Flags;->getFlag()Ljava/util/List;

    move-result-object v9

    .line 154
    .local v9, "configFlagStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_47
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_a2

    .line 155
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 156
    .local v11, "configFlagString":Ljava/lang/String;
    const/4 v12, -0x1

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_c8

    :cond_5b
    goto :goto_79

    :sswitch_5c
    const-string v13, "FLAG_TENT_MODE"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5b

    const/4 v12, 0x2

    goto :goto_79

    :sswitch_66
    const-string v13, "FLAG_CANCEL_OVERRIDE_REQUESTS"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5b

    const/4 v12, 0x0

    goto :goto_79

    :sswitch_70
    const-string v13, "FLAG_APP_INACCESSIBLE"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5b

    const/4 v12, 0x1

    :goto_79
    packed-switch v12, :pswitch_data_d6

    .line 169
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Parsed unknown flag with name: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "DeviceStateProviderImpl"

    invoke-static {v13, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9f

    .line 165
    :pswitch_95
    const/high16 v12, -0x80000000

    or-int/2addr v7, v12

    .line 166
    goto :goto_9f

    .line 161
    :pswitch_99
    or-int/lit8 v7, v7, 0x2

    .line 162
    goto :goto_9f

    .line 158
    :pswitch_9c
    or-int/lit8 v7, v7, 0x1

    .line 159
    nop

    .line 154
    .end local v11    # "configFlagString":Ljava/lang/String;
    :goto_9f
    add-int/lit8 v10, v10, 0x1

    goto :goto_47

    .line 176
    .end local v9    # "configFlagStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "i":I
    :cond_a2
    new-instance v9, Lcom/android/server/devicestate/DeviceState;

    invoke-direct {v9, v5, v6, v7}, Lcom/android/server/devicestate/DeviceState;-><init>(ILjava/lang/String;I)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    invoke-virtual {v4}, Lcom/android/server/policy/devicestate/config/DeviceState;->getConditions()Lcom/android/server/policy/devicestate/config/Conditions;

    move-result-object v9

    .line 179
    .local v9, "condition":Lcom/android/server/policy/devicestate/config/Conditions;
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    .end local v4    # "stateConfig":Lcom/android/server/policy/devicestate/config/DeviceState;
    .end local v5    # "state":I
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "flags":I
    .end local v8    # "configFlags":Lcom/android/server/policy/devicestate/config/Flags;
    .end local v9    # "condition":Lcom/android/server/policy/devicestate/config/Conditions;
    goto/16 :goto_1a

    .line 184
    .end local v2    # "config":Lcom/android/server/policy/devicestate/config/DeviceStateConfig;
    :cond_b3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_c2

    .line 185
    sget-object v2, Lcom/android/server/policy/DeviceStateProviderImpl;->DEFAULT_DEVICE_STATE:Lcom/android/server/devicestate/DeviceState;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    :cond_c2
    new-instance v2, Lcom/android/server/policy/DeviceStateProviderImpl;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/server/policy/DeviceStateProviderImpl;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    return-object v2

    :sswitch_data_c8
    .sparse-switch
        -0x439e3374 -> :sswitch_70
        -0x3ed3563b -> :sswitch_66
        -0x2ea9d428 -> :sswitch_5c
    .end sparse-switch

    :pswitch_data_d6
    .packed-switch 0x0
        :pswitch_9c
        :pswitch_99
        :pswitch_95
    .end packed-switch
.end method

.method private findSensor(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/Sensor;
    .registers 10
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 336
    iget-object v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/SensorManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 337
    .local v0, "sensorManager":Landroid/hardware/SensorManager;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    .line 338
    .local v1, "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    const/4 v2, 0x0

    .local v2, "sensorIndex":I
    :goto_10
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_39

    .line 339
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    .line 340
    .local v3, "sensor":Landroid/hardware/Sensor;
    invoke-virtual {v3}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v4

    .line 341
    .local v4, "sensorType":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v5

    .line 343
    .local v5, "sensorName":Ljava/lang/String;
    if-eqz v4, :cond_36

    if-nez v5, :cond_29

    .line 344
    goto :goto_36

    .line 347
    :cond_29
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_36

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_36

    .line 348
    return-object v3

    .line 338
    .end local v3    # "sensor":Landroid/hardware/Sensor;
    .end local v4    # "sensorType":Ljava/lang/String;
    .end local v5    # "sensorName":Ljava/lang/String;
    :cond_36
    :goto_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 351
    .end local v2    # "sensorIndex":I
    :cond_39
    const/4 v2, 0x0

    return-object v2
.end method

.method private static getConfigurationFile()Ljava/io/File;
    .registers 6

    .line 629
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "system/devicestate/"

    const-string v2, "device_state_configuration.xml"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 631
    .local v0, "configFileFromDataDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 632
    return-object v0

    .line 636
    :cond_18
    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v1

    const-string v3, "etc/devicestate/"

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 638
    .local v1, "configFileFromProductDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 639
    return-object v1

    .line 644
    :cond_2d
    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object v4

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 646
    .local v4, "configFileFromOdmDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_40

    .line 647
    return-object v4

    .line 651
    :cond_40
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v5

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 653
    .local v2, "configFileFromVendorDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_53

    .line 654
    return-object v2

    .line 657
    :cond_53
    const/4 v3, 0x0

    return-object v3
.end method

.method static synthetic lambda$static$0()Z
    .registers 1

    .line 89
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$static$1()Z
    .registers 1

    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method private notifySupportedStatesChanged()V
    .registers 4

    .line 385
    iget-object v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 386
    :try_start_3
    iget-object v1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mListener:Lcom/android/server/devicestate/DeviceStateProvider$Listener;

    if-nez v1, :cond_9

    .line 387
    monitor-exit v0

    return-void

    .line 390
    :cond_9
    iget-object v1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mOrderedStates:[Lcom/android/server/devicestate/DeviceState;

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/server/devicestate/DeviceState;

    .line 391
    .local v1, "supportedStates":[Lcom/android/server/devicestate/DeviceState;
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_19

    .line 393
    iget-object v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mListener:Lcom/android/server/devicestate/DeviceStateProvider$Listener;

    invoke-interface {v0, v1}, Lcom/android/server/devicestate/DeviceStateProvider$Listener;->onSupportedDeviceStatesChanged([Lcom/android/server/devicestate/DeviceState;)V

    .line 394
    return-void

    .line 391
    .end local v1    # "supportedStates":[Lcom/android/server/devicestate/DeviceState;
    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v1
.end method

.method private static parseConfig(Lcom/android/server/policy/DeviceStateProviderImpl$ReadableConfig;)Lcom/android/server/policy/devicestate/config/DeviceStateConfig;
    .registers 5
    .param p0, "readableConfig"    # Lcom/android/server/policy/DeviceStateProviderImpl$ReadableConfig;

    .line 666
    :try_start_0
    invoke-interface {p0}, Lcom/android/server/policy/DeviceStateProviderImpl$ReadableConfig;->openRead()Ljava/io/InputStream;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_2c
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_0 .. :try_end_4} :catch_2c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_4} :catch_2c

    .line 667
    .local v0, "in":Ljava/io/InputStream;
    :try_start_4
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_20

    .line 668
    .local v1, "bin":Ljava/io/InputStream;
    :try_start_9
    invoke-static {v1}, Lcom/android/server/policy/devicestate/config/XmlParser;->read(Ljava/io/InputStream;)Lcom/android/server/policy/devicestate/config/DeviceStateConfig;

    move-result-object v2
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_16

    .line 669
    :try_start_d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_20

    if-eqz v0, :cond_15

    :try_start_12
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_2c
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_12 .. :try_end_15} :catch_2c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12 .. :try_end_15} :catch_2c

    .line 668
    :cond_15
    return-object v2

    .line 666
    :catchall_16
    move-exception v2

    :try_start_17
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1b

    goto :goto_1f

    :catchall_1b
    move-exception v3

    :try_start_1c
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "in":Ljava/io/InputStream;
    .end local p0    # "readableConfig":Lcom/android/server/policy/DeviceStateProviderImpl$ReadableConfig;
    :goto_1f
    throw v2
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_20

    .end local v1    # "bin":Ljava/io/InputStream;
    .restart local v0    # "in":Ljava/io/InputStream;
    .restart local p0    # "readableConfig":Lcom/android/server/policy/DeviceStateProviderImpl$ReadableConfig;
    :catchall_20
    move-exception v1

    if-eqz v0, :cond_2b

    :try_start_23
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_27

    goto :goto_2b

    :catchall_27
    move-exception v2

    :try_start_28
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "readableConfig":Lcom/android/server/policy/DeviceStateProviderImpl$ReadableConfig;
    :cond_2b
    :goto_2b
    throw v1
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2c} :catch_2c
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_28 .. :try_end_2c} :catch_2c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_28 .. :try_end_2c} :catch_2c

    .line 669
    .end local v0    # "in":Ljava/io/InputStream;
    .restart local p0    # "readableConfig":Lcom/android/server/policy/DeviceStateProviderImpl$ReadableConfig;
    :catch_2c
    move-exception v0

    .line 670
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DeviceStateProviderImpl"

    const-string v2, "Encountered an error while reading device state config"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 672
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method private setStateConditions(Ljava/util/List;Ljava/util/List;)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/devicestate/DeviceState;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/policy/devicestate/config/Conditions;",
            ">;)V"
        }
    .end annotation

    .line 242
    .local p1, "deviceStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/devicestate/DeviceState;>;"
    .local p2, "stateConditions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/policy/devicestate/config/Conditions;>;"
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 245
    .local v1, "shouldListenToLidSwitch":Z
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 247
    .local v2, "sensorsToListenTo":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/hardware/Sensor;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_fa

    .line 248
    move-object/from16 v4, p1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/devicestate/DeviceState;

    invoke-virtual {v6}, Lcom/android/server/devicestate/DeviceState;->getIdentifier()I

    move-result v6

    .line 253
    .local v6, "state":I
    move-object/from16 v7, p2

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/policy/devicestate/config/Conditions;

    .line 254
    .local v8, "conditions":Lcom/android/server/policy/devicestate/config/Conditions;
    if-nez v8, :cond_2e

    .line 255
    iget-object v5, v0, Lcom/android/server/policy/DeviceStateProviderImpl;->mStateConditions:Landroid/util/SparseArray;

    sget-object v9, Lcom/android/server/policy/DeviceStateProviderImpl;->TRUE_BOOLEAN_SUPPLIER:Ljava/util/function/BooleanSupplier;

    invoke-virtual {v5, v6, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 256
    goto/16 :goto_f6

    .line 261
    :cond_2e
    const/4 v9, 0x1

    .line 263
    .local v9, "allRequiredComponentsFound":Z
    const/4 v10, 0x0

    .line 265
    .local v10, "lidSwitchRequired":Z
    new-instance v11, Landroid/util/ArraySet;

    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    .line 267
    .local v11, "sensorsRequired":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/hardware/Sensor;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 269
    .local v12, "suppliers":Ljava/util/List;, "Ljava/util/List<Ljava/util/function/BooleanSupplier;>;"
    invoke-virtual {v8}, Lcom/android/server/policy/devicestate/config/Conditions;->getLidSwitch()Lcom/android/server/policy/devicestate/config/LidSwitchCondition;

    move-result-object v13

    .line 270
    .local v13, "lidSwitchCondition":Lcom/android/server/policy/devicestate/config/LidSwitchCondition;
    if-eqz v13, :cond_4d

    .line 271
    new-instance v14, Lcom/android/server/policy/DeviceStateProviderImpl$LidSwitchBooleanSupplier;

    invoke-virtual {v13}, Lcom/android/server/policy/devicestate/config/LidSwitchCondition;->getOpen()Z

    move-result v15

    invoke-direct {v14, v0, v15}, Lcom/android/server/policy/DeviceStateProviderImpl$LidSwitchBooleanSupplier;-><init>(Lcom/android/server/policy/DeviceStateProviderImpl;Z)V

    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    const/4 v10, 0x1

    .line 278
    :cond_4d
    invoke-virtual {v8}, Lcom/android/server/policy/devicestate/config/Conditions;->getSensor()Ljava/util/List;

    move-result-object v14

    .line 279
    .local v14, "sensorConditions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/policy/devicestate/config/SensorCondition;>;"
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_52
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v5

    if-ge v15, v5, :cond_b6

    .line 280
    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/policy/devicestate/config/SensorCondition;

    .line 281
    .local v5, "sensorCondition":Lcom/android/server/policy/devicestate/config/SensorCondition;
    invoke-virtual {v5}, Lcom/android/server/policy/devicestate/config/SensorCondition;->getType()Ljava/lang/String;

    move-result-object v4

    .line 282
    .local v4, "expectedSensorType":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/android/server/policy/devicestate/config/SensorCondition;->getName()Ljava/lang/String;

    move-result-object v7

    .line 284
    .local v7, "expectedSensorName":Ljava/lang/String;
    move-object/from16 v16, v8

    .end local v8    # "conditions":Lcom/android/server/policy/devicestate/config/Conditions;
    .local v16, "conditions":Lcom/android/server/policy/devicestate/config/Conditions;
    invoke-direct {v0, v4, v7}, Lcom/android/server/policy/DeviceStateProviderImpl;->findSensor(Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/Sensor;

    move-result-object v8

    .line 285
    .local v8, "foundSensor":Landroid/hardware/Sensor;
    if-nez v8, :cond_96

    .line 286
    move/from16 v17, v9

    .end local v9    # "allRequiredComponentsFound":Z
    .local v17, "allRequiredComponentsFound":Z
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v13

    .end local v13    # "lidSwitchCondition":Lcom/android/server/policy/devicestate/config/LidSwitchCondition;
    .local v18, "lidSwitchCondition":Lcom/android/server/policy/devicestate/config/LidSwitchCondition;
    const-string v13, "Failed to find Sensor with type: "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v13, " and name: "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v13, "DeviceStateProviderImpl"

    invoke-static {v13, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const/4 v9, 0x0

    .line 289
    .end local v17    # "allRequiredComponentsFound":Z
    .restart local v9    # "allRequiredComponentsFound":Z
    goto :goto_bc

    .line 297
    .end local v18    # "lidSwitchCondition":Lcom/android/server/policy/devicestate/config/LidSwitchCondition;
    .restart local v13    # "lidSwitchCondition":Lcom/android/server/policy/devicestate/config/LidSwitchCondition;
    :cond_96
    move/from16 v17, v9

    move-object/from16 v18, v13

    .end local v9    # "allRequiredComponentsFound":Z
    .end local v13    # "lidSwitchCondition":Lcom/android/server/policy/devicestate/config/LidSwitchCondition;
    .restart local v17    # "allRequiredComponentsFound":Z
    .restart local v18    # "lidSwitchCondition":Lcom/android/server/policy/devicestate/config/LidSwitchCondition;
    new-instance v9, Lcom/android/server/policy/DeviceStateProviderImpl$SensorBooleanSupplier;

    invoke-virtual {v5}, Lcom/android/server/policy/devicestate/config/SensorCondition;->getValue()Ljava/util/List;

    move-result-object v13

    invoke-direct {v9, v0, v8, v13}, Lcom/android/server/policy/DeviceStateProviderImpl$SensorBooleanSupplier;-><init>(Lcom/android/server/policy/DeviceStateProviderImpl;Landroid/hardware/Sensor;Ljava/util/List;)V

    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    invoke-virtual {v11, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 279
    .end local v4    # "expectedSensorType":Ljava/lang/String;
    .end local v5    # "sensorCondition":Lcom/android/server/policy/devicestate/config/SensorCondition;
    .end local v7    # "expectedSensorName":Ljava/lang/String;
    .end local v8    # "foundSensor":Landroid/hardware/Sensor;
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v4, p1

    move-object/from16 v7, p2

    move-object/from16 v8, v16

    move/from16 v9, v17

    move-object/from16 v13, v18

    goto :goto_52

    .end local v16    # "conditions":Lcom/android/server/policy/devicestate/config/Conditions;
    .end local v17    # "allRequiredComponentsFound":Z
    .end local v18    # "lidSwitchCondition":Lcom/android/server/policy/devicestate/config/LidSwitchCondition;
    .local v8, "conditions":Lcom/android/server/policy/devicestate/config/Conditions;
    .restart local v9    # "allRequiredComponentsFound":Z
    .restart local v13    # "lidSwitchCondition":Lcom/android/server/policy/devicestate/config/LidSwitchCondition;
    :cond_b6
    move-object/from16 v16, v8

    move/from16 v17, v9

    move-object/from16 v18, v13

    .line 301
    .end local v8    # "conditions":Lcom/android/server/policy/devicestate/config/Conditions;
    .end local v13    # "lidSwitchCondition":Lcom/android/server/policy/devicestate/config/LidSwitchCondition;
    .end local v15    # "j":I
    .restart local v16    # "conditions":Lcom/android/server/policy/devicestate/config/Conditions;
    .restart local v18    # "lidSwitchCondition":Lcom/android/server/policy/devicestate/config/LidSwitchCondition;
    :goto_bc
    if-eqz v9, :cond_ef

    .line 302
    or-int/2addr v1, v10

    .line 303
    invoke-virtual {v2, v11}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 305
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_d4

    .line 306
    iget-object v4, v0, Lcom/android/server/policy/DeviceStateProviderImpl;->mStateConditions:Landroid/util/SparseArray;

    new-instance v5, Lcom/android/server/policy/DeviceStateProviderImpl$AndBooleanSupplier;

    invoke-direct {v5, v12}, Lcom/android/server/policy/DeviceStateProviderImpl$AndBooleanSupplier;-><init>(Ljava/util/List;)V

    invoke-virtual {v4, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_f6

    .line 307
    :cond_d4
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_e7

    .line 309
    iget-object v4, v0, Lcom/android/server/policy/DeviceStateProviderImpl;->mStateConditions:Landroid/util/SparseArray;

    const/4 v5, 0x0

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/function/BooleanSupplier;

    invoke-virtual {v4, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_f6

    .line 312
    :cond_e7
    iget-object v4, v0, Lcom/android/server/policy/DeviceStateProviderImpl;->mStateConditions:Landroid/util/SparseArray;

    sget-object v5, Lcom/android/server/policy/DeviceStateProviderImpl;->TRUE_BOOLEAN_SUPPLIER:Ljava/util/function/BooleanSupplier;

    invoke-virtual {v4, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_f6

    .line 317
    :cond_ef
    iget-object v4, v0, Lcom/android/server/policy/DeviceStateProviderImpl;->mStateConditions:Landroid/util/SparseArray;

    sget-object v5, Lcom/android/server/policy/DeviceStateProviderImpl;->FALSE_BOOLEAN_SUPPLIER:Ljava/util/function/BooleanSupplier;

    invoke-virtual {v4, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 247
    .end local v6    # "state":I
    .end local v9    # "allRequiredComponentsFound":Z
    .end local v10    # "lidSwitchRequired":Z
    .end local v11    # "sensorsRequired":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/hardware/Sensor;>;"
    .end local v12    # "suppliers":Ljava/util/List;, "Ljava/util/List<Ljava/util/function/BooleanSupplier;>;"
    .end local v14    # "sensorConditions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/policy/devicestate/config/SensorCondition;>;"
    .end local v16    # "conditions":Lcom/android/server/policy/devicestate/config/Conditions;
    .end local v18    # "lidSwitchCondition":Lcom/android/server/policy/devicestate/config/LidSwitchCondition;
    :goto_f6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_9

    .line 321
    .end local v3    # "i":I
    :cond_fa
    if-eqz v1, :cond_107

    .line 322
    const-class v3, Landroid/hardware/input/InputManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputManagerInternal;

    .line 324
    .local v3, "inputManager":Landroid/hardware/input/InputManagerInternal;
    invoke-virtual {v3, v0}, Landroid/hardware/input/InputManagerInternal;->registerLidSwitchCallback(Landroid/hardware/input/InputManagerInternal$LidSwitchCallback;)V

    .line 327
    .end local v3    # "inputManager":Landroid/hardware/input/InputManagerInternal;
    :cond_107
    iget-object v3, v0, Lcom/android/server/policy/DeviceStateProviderImpl;->mContext:Landroid/content/Context;

    const-class v4, Landroid/hardware/SensorManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    .line 328
    .local v3, "sensorManager":Landroid/hardware/SensorManager;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_112
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v4, v5, :cond_125

    .line 329
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Sensor;

    .line 330
    .local v5, "sensor":Landroid/hardware/Sensor;
    const/4 v6, 0x0

    invoke-virtual {v3, v0, v5, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 328
    .end local v5    # "sensor":Landroid/hardware/Sensor;
    add-int/lit8 v4, v4, 0x1

    goto :goto_112

    .line 332
    .end local v4    # "i":I
    :cond_125
    return-void
.end method


# virtual methods
.method public bootAnimationCompleted()V
    .registers 2

    .line 372
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mBootAnimationCompleted:Z

    .line 373
    invoke-virtual {p0}, Lcom/android/server/policy/DeviceStateProviderImpl;->notifyDeviceStateChangedIfNeeded()V

    .line 374
    return-void
.end method

.method notifyDeviceStateChangedIfNeeded()V
    .registers 9

    .line 398
    const/4 v0, -0x1

    .line 399
    .local v0, "stateToReport":I
    iget-object v1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 402
    :try_start_4
    iget-object v2, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mListener:Lcom/android/server/devicestate/DeviceStateProvider$Listener;

    if-eqz v2, :cond_6b

    iget-boolean v2, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mBootAnimationCompleted:Z

    if-nez v2, :cond_d

    goto :goto_6b

    .line 406
    :cond_d
    iget-object v2, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mOrderedStates:[Lcom/android/server/devicestate/DeviceState;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/server/devicestate/DeviceState;->getIdentifier()I

    move-result v2

    .line 407
    .local v2, "newState":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_17
    iget-object v4, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mOrderedStates:[Lcom/android/server/devicestate/DeviceState;

    array-length v5, v4

    if-ge v3, v5, :cond_5a

    .line 408
    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/android/server/devicestate/DeviceState;->getIdentifier()I

    move-result v4
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_6d

    .line 415
    .local v4, "state":I
    :try_start_22
    iget-object v5, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mStateConditions:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/function/BooleanSupplier;

    invoke-interface {v5}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v5

    .line 418
    .local v5, "conditionSatisfied":Z
    if-eqz v5, :cond_4f

    iget-object v6, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mOrderedStates:[Lcom/android/server/devicestate/DeviceState;

    aget-object v6, v6, v3

    const/high16 v7, -0x80000000

    .line 419
    invoke-virtual {v6, v7}, Lcom/android/server/devicestate/DeviceState;->hasFlag(I)Z

    move-result v6

    if-eqz v6, :cond_4f

    .line 420
    iget-object v6, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mStrictFoldedDeviceStates:[I

    iget v7, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLastReportedState:I

    invoke-static {v6, v7}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v6

    if-nez v6, :cond_4a

    iget v6, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLastReportedState:I

    if-ne v6, v4, :cond_4e

    :cond_4a
    iget-boolean v6, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mInteractive:Z
    :try_end_4c
    .catch Ljava/lang/IllegalStateException; {:try_start_22 .. :try_end_4c} :catch_57
    .catchall {:try_start_22 .. :try_end_4c} :catchall_6d

    if-nez v6, :cond_4f

    .line 422
    :cond_4e
    const/4 v5, 0x0

    .line 435
    :cond_4f
    nop

    .line 437
    if-eqz v5, :cond_54

    .line 441
    move v2, v4

    .line 442
    goto :goto_5a

    .line 407
    .end local v4    # "state":I
    .end local v5    # "conditionSatisfied":Z
    :cond_54
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 427
    .restart local v4    # "state":I
    :catch_57
    move-exception v5

    .line 434
    .local v5, "e":Ljava/lang/IllegalStateException;
    :try_start_58
    monitor-exit v1

    return-void

    .line 446
    .end local v3    # "i":I
    .end local v4    # "state":I
    .end local v5    # "e":Ljava/lang/IllegalStateException;
    :cond_5a
    :goto_5a
    iget v3, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLastReportedState:I

    if-eq v2, v3, :cond_61

    .line 447
    iput v2, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLastReportedState:I

    .line 448
    move v0, v2

    .line 450
    .end local v2    # "newState":I
    :cond_61
    monitor-exit v1
    :try_end_62
    .catchall {:try_start_58 .. :try_end_62} :catchall_6d

    .line 452
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6a

    .line 453
    iget-object v1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mListener:Lcom/android/server/devicestate/DeviceStateProvider$Listener;

    invoke-interface {v1, v0}, Lcom/android/server/devicestate/DeviceStateProvider$Listener;->onStateChanged(I)V

    .line 455
    :cond_6a
    return-void

    .line 403
    :cond_6b
    :goto_6b
    :try_start_6b
    monitor-exit v1

    return-void

    .line 450
    :catchall_6d
    move-exception v2

    monitor-exit v1
    :try_end_6f
    .catchall {:try_start_6b .. :try_end_6f} :catchall_6d

    throw v2
.end method

.method public notifyLidSwitchChanged(JZ)V
    .registers 6
    .param p1, "whenNanos"    # J
    .param p3, "lidOpen"    # Z

    .line 459
    iget-object v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 460
    :try_start_3
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mIsLidOpen:Ljava/lang/Boolean;

    .line 461
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_e

    .line 465
    invoke-virtual {p0}, Lcom/android/server/policy/DeviceStateProviderImpl;->notifyDeviceStateChangedIfNeeded()V

    .line 466
    return-void

    .line 461
    :catchall_e
    move-exception v1

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v1
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 479
    return-void
.end method

.method public onEarlyInteractivityChange(Z)V
    .registers 2
    .param p1, "interactive"    # Z

    .line 378
    iput-boolean p1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mInteractive:Z

    .line 379
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 470
    iget-object v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 471
    :try_start_3
    iget-object v1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLatestSensorEvent:Ljava/util/Map;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_f

    .line 473
    invoke-virtual {p0}, Lcom/android/server/policy/DeviceStateProviderImpl;->notifyDeviceStateChangedIfNeeded()V

    .line 474
    return-void

    .line 472
    :catchall_f
    move-exception v1

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public setListener(Lcom/android/server/devicestate/DeviceStateProvider$Listener;)V
    .registers 5
    .param p1, "listener"    # Lcom/android/server/devicestate/DeviceStateProvider$Listener;

    .line 356
    iget-object v0, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 357
    :try_start_3
    iget-object v1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mListener:Lcom/android/server/devicestate/DeviceStateProvider$Listener;

    if-nez v1, :cond_11

    .line 360
    iput-object p1, p0, Lcom/android/server/policy/DeviceStateProviderImpl;->mListener:Lcom/android/server/devicestate/DeviceStateProvider$Listener;

    .line 361
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_19

    .line 362
    invoke-direct {p0}, Lcom/android/server/policy/DeviceStateProviderImpl;->notifySupportedStatesChanged()V

    .line 363
    invoke-virtual {p0}, Lcom/android/server/policy/DeviceStateProviderImpl;->notifyDeviceStateChangedIfNeeded()V

    .line 364
    return-void

    .line 358
    :cond_11
    :try_start_11
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Provider already has a listener set."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/policy/DeviceStateProviderImpl;
    .end local p1    # "listener":Lcom/android/server/devicestate/DeviceStateProvider$Listener;
    throw v1

    .line 361
    .restart local p0    # "this":Lcom/android/server/policy/DeviceStateProviderImpl;
    .restart local p1    # "listener":Lcom/android/server/devicestate/DeviceStateProvider$Listener;
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_19

    throw v1
.end method
