.class Lcom/android/server/wm/LaunchParamsPersister;
.super Ljava/lang/Object;
.source "LaunchParamsPersister.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;,
        Lcom/android/server/wm/LaunchParamsPersister$CleanUpComponentQueueItem;,
        Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;,
        Lcom/android/server/wm/LaunchParamsPersister$PackageListObserver;
    }
.end annotation


# static fields
.field private static final ESCAPED_COMPONENT_SEPARATOR:C = '-'

.field private static final LAUNCH_PARAMS_DIRNAME:Ljava/lang/String; = "launch_params"

.field private static final LAUNCH_PARAMS_DIRNAME_DESKTOP:Ljava/lang/String; = "launch_params_desktop"

.field private static final LAUNCH_PARAMS_FILE_SUFFIX:Ljava/lang/String; = ".xml"

.field private static final OLD_ESCAPED_COMPONENT_SEPARATOR:C = '_'

.field private static final ORIGINAL_COMPONENT_SEPARATOR:C = '/'

.field private static final TAG:Ljava/lang/String; = "LaunchParamsPersister"

.field private static final TAG_LAUNCH_PARAMS:Ljava/lang/String; = "launch_params"


# instance fields
.field private final mLaunchParamsMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mLaunchParamsMapDeskTop:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPackageList:Lcom/android/server/pm/PackageList;

.field private final mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

.field private final mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field private final mUserFolderGetter:Ljava/util/function/IntFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/IntFunction<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowLayoutAffinityMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmSupervisor(Lcom/android/server/wm/LaunchParamsPersister;)Lcom/android/server/wm/ActivityTaskSupervisor;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/LaunchParamsPersister;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetLaunchParamFolder(Lcom/android/server/wm/LaunchParamsPersister;I)Ljava/io/File;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/LaunchParamsPersister;->getLaunchParamFolder(I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetParamFile(Lcom/android/server/wm/LaunchParamsPersister;Ljava/io/File;Landroid/content/ComponentName;)Ljava/io/File;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/LaunchParamsPersister;->getParamFile(Ljava/io/File;Landroid/content/ComponentName;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/android/server/wm/PersisterQueue;Lcom/android/server/wm/ActivityTaskSupervisor;)V
    .registers 4
    .param p1, "persisterQueue"    # Lcom/android/server/wm/PersisterQueue;
    .param p2, "supervisor"    # Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 113
    new-instance v0, Lcom/android/server/wm/LaunchParamsPersister$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/wm/LaunchParamsPersister$$ExternalSyntheticLambda2;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wm/LaunchParamsPersister;-><init>(Lcom/android/server/wm/PersisterQueue;Lcom/android/server/wm/ActivityTaskSupervisor;Ljava/util/function/IntFunction;)V

    .line 114
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/PersisterQueue;Lcom/android/server/wm/ActivityTaskSupervisor;Ljava/util/function/IntFunction;)V
    .registers 5
    .param p1, "persisterQueue"    # Lcom/android/server/wm/PersisterQueue;
    .param p2, "supervisor"    # Lcom/android/server/wm/ActivityTaskSupervisor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/PersisterQueue;",
            "Lcom/android/server/wm/ActivityTaskSupervisor;",
            "Ljava/util/function/IntFunction<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 118
    .local p3, "userFolderGetter":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<Ljava/io/File;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    .line 101
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMapDeskTop:Landroid/util/SparseArray;

    .line 109
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/LaunchParamsPersister;->mWindowLayoutAffinityMap:Landroid/util/ArrayMap;

    .line 119
    iput-object p1, p0, Lcom/android/server/wm/LaunchParamsPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    .line 120
    iput-object p2, p0, Lcom/android/server/wm/LaunchParamsPersister;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 121
    iput-object p3, p0, Lcom/android/server/wm/LaunchParamsPersister;->mUserFolderGetter:Ljava/util/function/IntFunction;

    .line 122
    return-void
.end method

.method private addComponentNameToLaunchParamAffinityMapIfNotNull(Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "launchParamAffinity"    # Ljava/lang/String;

    .line 387
    if-nez p2, :cond_3

    .line 388
    return-void

    .line 390
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsPersister;->mWindowLayoutAffinityMap:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/wm/LaunchParamsPersister$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/wm/LaunchParamsPersister$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, p2, v1}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 391
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 392
    return-void
.end method

.method private getLaunchParamFolder(I)Ljava/io/File;
    .registers 5
    .param p1, "userId"    # I

    .line 506
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsPersister;->mUserFolderGetter:Ljava/util/function/IntFunction;

    invoke-interface {v0, p1}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 509
    .local v0, "userFolder":Ljava/io/File;
    invoke-static {}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->isMiuiDesktopModeActive()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 510
    new-instance v1, Ljava/io/File;

    const-string v2, "launch_params_desktop"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1

    .line 512
    :cond_16
    new-instance v1, Ljava/io/File;

    const-string v2, "launch_params"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private getParamFile(Ljava/io/File;Landroid/content/ComponentName;)Ljava/io/File;
    .registers 7
    .param p1, "launchParamFolder"    # Ljava/io/File;
    .param p2, "name"    # Landroid/content/ComponentName;

    .line 500
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    .line 501
    const/16 v1, 0x2f

    const/16 v2, 0x2d

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 502
    .local v0, "componentNameString":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method static synthetic lambda$addComponentNameToLaunchParamAffinityMapIfNotNull$1(Ljava/lang/String;)Landroid/util/ArraySet;
    .registers 2
    .param p0, "affinity"    # Ljava/lang/String;

    .line 390
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$removeRecordForPackage$2(Ljava/lang/String;Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;)Z
    .registers 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "item"    # Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;

    .line 492
    invoke-static {p1}, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->-$$Nest$fgetmComponentName(Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private loadLaunchParams(I)V
    .registers 23
    .param p1, "userId"    # I

    .line 145
    move-object/from16 v1, p0

    move/from16 v2, p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 146
    .local v3, "filesToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/LaunchParamsPersister;->getLaunchParamFolder(I)Ljava/io/File;

    move-result-object v4

    .line 147
    .local v4, "launchParamsFolder":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const-string v5, "LaunchParamsPersister"

    if-nez v0, :cond_2d

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Didn\'t find launch param folder for user "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return-void

    .line 152
    :cond_2d
    new-instance v0, Landroid/util/ArraySet;

    iget-object v6, v1, Lcom/android/server/wm/LaunchParamsPersister;->mPackageList:Lcom/android/server/pm/PackageList;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageList;->getPackageNames()Ljava/util/List;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    move-object v6, v0

    .line 154
    .local v6, "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    .line 155
    .local v7, "paramsFiles":[Ljava/io/File;
    new-instance v0, Landroid/util/ArrayMap;

    array-length v8, v7

    invoke-direct {v0, v8}, Landroid/util/ArrayMap;-><init>(I)V

    move-object v8, v0

    .line 159
    .local v8, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;>;"
    invoke-static {}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->isMiuiDesktopModeActive()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 160
    iget-object v0, v1, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMapDeskTop:Landroid/util/SparseArray;

    invoke-virtual {v0, v2, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_55

    .line 162
    :cond_50
    iget-object v0, v1, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v2, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 166
    :goto_55
    array-length v9, v7

    const/4 v11, 0x0

    :goto_57
    if-ge v11, v9, :cond_227

    aget-object v13, v7, v11

    .line 167
    .local v13, "paramsFile":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->isFile()Z

    move-result v14

    if-nez v14, :cond_85

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, " is not a file."

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    move-object/from16 v17, v4

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move/from16 v20, v9

    goto/16 :goto_219

    .line 171
    :cond_85
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, ".xml"

    invoke-virtual {v14, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_b8

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unexpected params file name: "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    move-object/from16 v17, v4

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move/from16 v20, v9

    goto/16 :goto_219

    .line 176
    :cond_b8
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    .line 178
    .local v14, "paramsFileName":Ljava/lang/String;
    nop

    .line 179
    const/16 v12, 0x5f

    invoke-virtual {v14, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    .line 180
    .local v10, "oldSeparatorIndex":I
    const/4 v0, -0x1

    if-eq v10, v0, :cond_fb

    .line 181
    add-int/lit8 v2, v10, 0x1

    invoke-virtual {v14, v12, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-eq v2, v0, :cond_db

    .line 186
    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    move-object/from16 v17, v4

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move/from16 v20, v9

    goto/16 :goto_219

    .line 189
    :cond_db
    const/16 v0, 0x2d

    invoke-virtual {v14, v12, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v14

    .line 191
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 192
    .local v0, "newFile":Ljava/io/File;
    invoke-virtual {v13, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_ee

    .line 193
    move-object v13, v0

    goto :goto_fb

    .line 197
    :cond_ee
    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    move-object/from16 v17, v4

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move/from16 v20, v9

    goto/16 :goto_219

    .line 201
    .end local v0    # "newFile":Ljava/io/File;
    :cond_fb
    :goto_fb
    nop

    .line 203
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v0, v2

    .line 201
    const/4 v2, 0x0

    invoke-virtual {v14, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v12, 0x2f

    .line 204
    const/16 v15, 0x2d

    invoke-virtual {v0, v15, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v12

    .line 205
    .local v12, "componentNameString":Ljava/lang/String;
    invoke-static {v12}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v15

    .line 207
    .local v15, "name":Landroid/content/ComponentName;
    if-nez v15, :cond_13b

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected file name: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    move-object/from16 v17, v4

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move/from16 v20, v9

    goto/16 :goto_219

    .line 213
    :cond_13b
    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_152

    .line 216
    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    move-object/from16 v17, v4

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move/from16 v20, v9

    goto/16 :goto_219

    .line 220
    :cond_152
    :try_start_152
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_157
    .catch Ljava/lang/Exception; {:try_start_152 .. :try_end_157} :catch_1f7

    move-object v2, v0

    .line 221
    .local v2, "in":Ljava/io/InputStream;
    :try_start_158
    new-instance v0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;
    :try_end_15a
    .catchall {:try_start_158 .. :try_end_15a} :catchall_1e1

    move-object/from16 v17, v4

    const/4 v4, 0x0

    .end local v4    # "launchParamsFolder":Ljava/io/File;
    .local v17, "launchParamsFolder":Ljava/io/File;
    :try_start_15d
    invoke-direct {v0, v1, v4}, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;-><init>(Lcom/android/server/wm/LaunchParamsPersister;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams-IA;)V

    .line 222
    .local v0, "params":Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;
    invoke-static {v2}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v4
    :try_end_164
    .catchall {:try_start_15d .. :try_end_164} :catchall_1d8

    .line 224
    .local v4, "parser":Landroid/util/TypedXmlPullParser;
    :goto_164
    move-object/from16 v18, v6

    .end local v6    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v18, "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_166
    invoke-interface {v4}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v6
    :try_end_16a
    .catchall {:try_start_166 .. :try_end_16a} :catchall_1d1

    move/from16 v16, v6

    move-object/from16 v19, v7

    const/4 v7, 0x1

    .end local v7    # "paramsFiles":[Ljava/io/File;
    .local v16, "event":I
    .local v19, "paramsFiles":[Ljava/io/File;
    if-eq v6, v7, :cond_1c0

    const/4 v6, 0x3

    move/from16 v7, v16

    .end local v16    # "event":I
    .local v7, "event":I
    if-eq v7, v6, :cond_1bb

    .line 226
    const/4 v6, 0x2

    if-eq v7, v6, :cond_17e

    .line 227
    move-object/from16 v6, v18

    move-object/from16 v7, v19

    goto :goto_164

    .line 230
    :cond_17e
    :try_start_17e
    invoke-interface {v4}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 231
    .local v6, "tagName":Ljava/lang/String;
    move/from16 v16, v7

    .end local v7    # "event":I
    .restart local v16    # "event":I
    const-string v7, "launch_params"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1ab

    .line 232
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_191
    .catchall {:try_start_17e .. :try_end_191} :catchall_1b7

    move/from16 v20, v9

    :try_start_193
    const-string v9, "Unexpected tag name: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    move-object/from16 v6, v18

    move-object/from16 v7, v19

    move/from16 v9, v20

    goto :goto_164

    .line 236
    :cond_1ab
    move/from16 v20, v9

    invoke-virtual {v0, v13, v4}, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->restore(Ljava/io/File;Landroid/util/TypedXmlPullParser;)V

    .line 237
    .end local v6    # "tagName":Ljava/lang/String;
    move-object/from16 v6, v18

    move-object/from16 v7, v19

    move/from16 v9, v20

    goto :goto_164

    .line 220
    .end local v0    # "params":Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;
    .end local v4    # "parser":Landroid/util/TypedXmlPullParser;
    .end local v16    # "event":I
    :catchall_1b7
    move-exception v0

    move/from16 v20, v9

    goto :goto_1cf

    .line 224
    .restart local v0    # "params":Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;
    .restart local v4    # "parser":Landroid/util/TypedXmlPullParser;
    .restart local v7    # "event":I
    :cond_1bb
    move/from16 v16, v7

    move/from16 v20, v9

    .end local v7    # "event":I
    .restart local v16    # "event":I
    goto :goto_1c2

    :cond_1c0
    move/from16 v20, v9

    .line 239
    :goto_1c2
    invoke-virtual {v8, v15, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    iget-object v6, v0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowLayoutAffinity:Ljava/lang/String;

    invoke-direct {v1, v15, v6}, Lcom/android/server/wm/LaunchParamsPersister;->addComponentNameToLaunchParamAffinityMapIfNotNull(Landroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_1ca
    .catchall {:try_start_193 .. :try_end_1ca} :catchall_1ce

    .line 242
    .end local v0    # "params":Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;
    .end local v4    # "parser":Landroid/util/TypedXmlPullParser;
    .end local v16    # "event":I
    :try_start_1ca
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1cd
    .catch Ljava/lang/Exception; {:try_start_1ca .. :try_end_1cd} :catch_1f5

    .line 245
    .end local v2    # "in":Ljava/io/InputStream;
    goto :goto_219

    .line 220
    .restart local v2    # "in":Ljava/io/InputStream;
    :catchall_1ce
    move-exception v0

    :goto_1cf
    move-object v4, v0

    goto :goto_1eb

    .end local v19    # "paramsFiles":[Ljava/io/File;
    .local v7, "paramsFiles":[Ljava/io/File;
    :catchall_1d1
    move-exception v0

    move-object/from16 v19, v7

    move/from16 v20, v9

    move-object v4, v0

    .end local v7    # "paramsFiles":[Ljava/io/File;
    .restart local v19    # "paramsFiles":[Ljava/io/File;
    goto :goto_1eb

    .end local v18    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v19    # "paramsFiles":[Ljava/io/File;
    .local v6, "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v7    # "paramsFiles":[Ljava/io/File;
    :catchall_1d8
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move/from16 v20, v9

    move-object v4, v0

    .end local v6    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v7    # "paramsFiles":[Ljava/io/File;
    .restart local v18    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v19    # "paramsFiles":[Ljava/io/File;
    goto :goto_1eb

    .end local v17    # "launchParamsFolder":Ljava/io/File;
    .end local v18    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v19    # "paramsFiles":[Ljava/io/File;
    .local v4, "launchParamsFolder":Ljava/io/File;
    .restart local v6    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v7    # "paramsFiles":[Ljava/io/File;
    :catchall_1e1
    move-exception v0

    move-object/from16 v17, v4

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move/from16 v20, v9

    move-object v4, v0

    .end local v4    # "launchParamsFolder":Ljava/io/File;
    .end local v6    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v7    # "paramsFiles":[Ljava/io/File;
    .restart local v17    # "launchParamsFolder":Ljava/io/File;
    .restart local v18    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v19    # "paramsFiles":[Ljava/io/File;
    :goto_1eb
    :try_start_1eb
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1ee
    .catchall {:try_start_1eb .. :try_end_1ee} :catchall_1ef

    goto :goto_1f4

    :catchall_1ef
    move-exception v0

    move-object v6, v0

    :try_start_1f1
    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "filesToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v8    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;>;"
    .end local v10    # "oldSeparatorIndex":I
    .end local v12    # "componentNameString":Ljava/lang/String;
    .end local v13    # "paramsFile":Ljava/io/File;
    .end local v14    # "paramsFileName":Ljava/lang/String;
    .end local v15    # "name":Landroid/content/ComponentName;
    .end local v17    # "launchParamsFolder":Ljava/io/File;
    .end local v18    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v19    # "paramsFiles":[Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/wm/LaunchParamsPersister;
    .end local p1    # "userId":I
    :goto_1f4
    throw v4
    :try_end_1f5
    .catch Ljava/lang/Exception; {:try_start_1f1 .. :try_end_1f5} :catch_1f5

    .line 242
    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "filesToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v8    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;>;"
    .restart local v10    # "oldSeparatorIndex":I
    .restart local v12    # "componentNameString":Ljava/lang/String;
    .restart local v13    # "paramsFile":Ljava/io/File;
    .restart local v14    # "paramsFileName":Ljava/lang/String;
    .restart local v15    # "name":Landroid/content/ComponentName;
    .restart local v17    # "launchParamsFolder":Ljava/io/File;
    .restart local v18    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v19    # "paramsFiles":[Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/wm/LaunchParamsPersister;
    .restart local p1    # "userId":I
    :catch_1f5
    move-exception v0

    goto :goto_200

    .end local v17    # "launchParamsFolder":Ljava/io/File;
    .end local v18    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v19    # "paramsFiles":[Ljava/io/File;
    .restart local v4    # "launchParamsFolder":Ljava/io/File;
    .restart local v6    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v7    # "paramsFiles":[Ljava/io/File;
    :catch_1f7
    move-exception v0

    move-object/from16 v17, v4

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move/from16 v20, v9

    .line 243
    .end local v4    # "launchParamsFolder":Ljava/io/File;
    .end local v6    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v7    # "paramsFiles":[Ljava/io/File;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v17    # "launchParamsFolder":Ljava/io/File;
    .restart local v18    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v19    # "paramsFiles":[Ljava/io/File;
    :goto_200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to restore launch params for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 244
    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v10    # "oldSeparatorIndex":I
    .end local v12    # "componentNameString":Ljava/lang/String;
    .end local v13    # "paramsFile":Ljava/io/File;
    .end local v14    # "paramsFileName":Ljava/lang/String;
    .end local v15    # "name":Landroid/content/ComponentName;
    :goto_219
    add-int/lit8 v11, v11, 0x1

    move/from16 v2, p1

    move-object/from16 v4, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    move/from16 v9, v20

    goto/16 :goto_57

    .line 248
    .end local v17    # "launchParamsFolder":Ljava/io/File;
    .end local v18    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v19    # "paramsFiles":[Ljava/io/File;
    .restart local v4    # "launchParamsFolder":Ljava/io/File;
    .restart local v6    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v7    # "paramsFiles":[Ljava/io/File;
    :cond_227
    move-object/from16 v17, v4

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    .end local v4    # "launchParamsFolder":Ljava/io/File;
    .end local v6    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v7    # "paramsFiles":[Ljava/io/File;
    .restart local v17    # "launchParamsFolder":Ljava/io/File;
    .restart local v18    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v19    # "paramsFiles":[Ljava/io/File;
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_23f

    .line 249
    iget-object v0, v1, Lcom/android/server/wm/LaunchParamsPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance v2, Lcom/android/server/wm/LaunchParamsPersister$CleanUpComponentQueueItem;

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4}, Lcom/android/server/wm/LaunchParamsPersister$CleanUpComponentQueueItem;-><init>(Lcom/android/server/wm/LaunchParamsPersister;Ljava/util/List;Lcom/android/server/wm/LaunchParamsPersister$CleanUpComponentQueueItem-IA;)V

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4}, Lcom/android/server/wm/PersisterQueue;->addItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V

    .line 251
    :cond_23f
    return-void
.end method

.method private saveTaskToLaunchParam(Lcom/android/server/wm/Task;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;)Z
    .registers 9
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "display"    # Lcom/android/server/wm/DisplayContent;
    .param p3, "params"    # Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    .line 308
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 309
    .local v0, "info":Landroid/view/DisplayInfo;
    iget-object v1, p2, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 311
    iget-object v1, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mDisplayUniqueId:Ljava/lang/String;

    iget-object v2, v0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 312
    .local v1, "changed":Z
    iget-object v3, v0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    iput-object v3, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mDisplayUniqueId:Ljava/lang/String;

    .line 314
    iget v3, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowingMode:I

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v4

    if-eq v3, v4, :cond_22

    move v3, v2

    goto :goto_23

    :cond_22
    const/4 v3, 0x0

    :goto_23
    or-int/2addr v1, v3

    .line 315
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v3

    iput v3, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowingMode:I

    .line 317
    iget-object v3, p1, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v3, :cond_40

    .line 318
    iget-object v3, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mBounds:Landroid/graphics/Rect;

    iget-object v4, p1, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 319
    iget-object v2, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mBounds:Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_4d

    .line 321
    :cond_40
    iget-object v3, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    xor-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 322
    iget-object v2, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 325
    :goto_4d
    iget-object v2, p1, Lcom/android/server/wm/Task;->mWindowLayoutAffinity:Ljava/lang/String;

    .line 326
    .local v2, "launchParamAffinity":Ljava/lang/String;
    iget-object v3, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowLayoutAffinity:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v1, v3

    .line 327
    iput-object v2, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowLayoutAffinity:Ljava/lang/String;

    .line 329
    if-eqz v1, :cond_60

    .line 330
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mTimestamp:J

    .line 333
    :cond_60
    return v1
.end method

.method private saveTaskToLaunchParamMiuiDeskTop(Lcom/android/server/wm/Task;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;)Z
    .registers 15
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "display"    # Lcom/android/server/wm/DisplayContent;
    .param p3, "params"    # Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    .line 339
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 340
    .local v0, "info":Landroid/view/DisplayInfo;
    iget-object v1, p2, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 342
    iget-object v1, v0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    .line 343
    .local v1, "saveDisplayUniqueId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v2

    .line 345
    .local v2, "saveWindowMode":I
    iget-object v3, p1, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    const/4 v4, 0x0

    if-eqz v3, :cond_1d

    .line 346
    new-instance v3, Landroid/graphics/Rect;

    iget-object v5, p1, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-direct {v3, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .local v3, "saveBounds":Landroid/graphics/Rect;
    goto :goto_22

    .line 348
    .end local v3    # "saveBounds":Landroid/graphics/Rect;
    :cond_1d
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 351
    .restart local v3    # "saveBounds":Landroid/graphics/Rect;
    :goto_22
    iget-object v5, p1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->getMiuiFreeFormActivityStack(I)Lcom/android/server/wm/MiuiFreeFormActivityStackStub;

    move-result-object v5

    .line 352
    .local v5, "ffas":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    if-eqz v5, :cond_3a

    .line 353
    invoke-virtual {v5}, Lcom/android/server/wm/MiuiFreeFormActivityStackStub;->getFreeFormScale()F

    move-result v6

    .line 354
    .local v6, "saveFreeFormScale":F
    iget-wide v7, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mTimestamp:J

    invoke-virtual {v5, v7, v8}, Lcom/android/server/wm/MiuiFreeFormActivityStackStub;->setFreeformTimestamp(J)V

    goto :goto_3b

    .line 356
    .end local v6    # "saveFreeFormScale":F
    :cond_3a
    const/4 v6, 0x0

    .line 357
    .restart local v6    # "saveFreeFormScale":F
    :goto_3b
    iget-object v7, p1, Lcom/android/server/wm/Task;->mWindowLayoutAffinity:Ljava/lang/String;

    .line 358
    .local v7, "saveWindowLayoutAffinity":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_89

    const/4 v8, 0x5

    if-ne v2, v8, :cond_89

    const/4 v8, 0x0

    cmpl-float v8, v6, v8

    if-nez v8, :cond_4c

    goto :goto_89

    .line 362
    :cond_4c
    iget-object v8, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mDisplayUniqueId:Ljava/lang/String;

    invoke-static {v8, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x1

    xor-int/2addr v8, v9

    .line 363
    .local v8, "changed":Z
    iput-object v1, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mDisplayUniqueId:Ljava/lang/String;

    .line 365
    iget v10, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowingMode:I

    if-eq v10, v2, :cond_5c

    move v10, v9

    goto :goto_5d

    :cond_5c
    move v10, v4

    :goto_5d
    or-int/2addr v8, v10

    .line 366
    iput v2, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowingMode:I

    .line 368
    iget-object v10, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-static {v10, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    xor-int/2addr v10, v9

    or-int/2addr v8, v10

    .line 369
    iget-object v10, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v10, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 371
    iget v10, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mFreeFormScale:F

    cmpl-float v10, v10, v6

    if-eqz v10, :cond_74

    move v4, v9

    :cond_74
    or-int/2addr v4, v8

    .line 372
    .end local v8    # "changed":Z
    .local v4, "changed":Z
    iput v6, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mFreeFormScale:F

    .line 374
    iget-object v8, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowLayoutAffinity:Ljava/lang/String;

    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v4, v8

    .line 375
    iput-object v7, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowLayoutAffinity:Ljava/lang/String;

    .line 377
    if-eqz v4, :cond_88

    .line 378
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p3, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mTimestamp:J

    .line 381
    :cond_88
    return v4

    .line 359
    .end local v4    # "changed":Z
    :cond_89
    :goto_89
    return v4
.end method


# virtual methods
.method public getFreeformLastPosition(Lcom/android/server/wm/Task;)Landroid/graphics/Rect;
    .registers 11
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 519
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 520
    :cond_4
    invoke-static {}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->isMiuiDesktopModeActive()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 521
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    iget-object v2, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMapDeskTop:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_4a

    .line 522
    iget-object v2, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMapDeskTop:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 523
    .local v2, "userId":I
    invoke-direct {p0, v2}, Lcom/android/server/wm/LaunchParamsPersister;->getLaunchParamFolder(I)Ljava/io/File;

    move-result-object v3

    .line 524
    .local v3, "launchParamsFolder":Ljava/io/File;
    iget-object v4, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMapDeskTop:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    .line 525
    .local v4, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;>;"
    iget-object v5, p1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 526
    .local v5, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "j":I
    :goto_2d
    if-ltz v6, :cond_47

    .line 527
    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 528
    .local v7, "lastComponentName":Landroid/content/ComponentName;
    invoke-virtual {v7, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_44

    .line 529
    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    iget-object v0, v0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mBounds:Landroid/graphics/Rect;

    return-object v0

    .line 526
    .end local v7    # "lastComponentName":Landroid/content/ComponentName;
    :cond_44
    add-int/lit8 v6, v6, -0x1

    goto :goto_2d

    .line 521
    .end local v2    # "userId":I
    .end local v3    # "launchParamsFolder":Ljava/io/File;
    .end local v4    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;>;"
    .end local v5    # "componentName":Landroid/content/ComponentName;
    .end local v6    # "j":I
    :cond_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 534
    .end local v1    # "i":I
    :cond_4a
    return-object v0
.end method

.method public getFreeformLastScale(Lcom/android/server/wm/Task;)F
    .registers 11
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 538
    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p1, :cond_5

    return v0

    .line 539
    :cond_5
    invoke-static {}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->isMiuiDesktopModeActive()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 540
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    iget-object v2, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMapDeskTop:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_4b

    .line 541
    iget-object v2, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMapDeskTop:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 542
    .local v2, "userId":I
    invoke-direct {p0, v2}, Lcom/android/server/wm/LaunchParamsPersister;->getLaunchParamFolder(I)Ljava/io/File;

    move-result-object v3

    .line 543
    .local v3, "launchParamsFolder":Ljava/io/File;
    iget-object v4, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMapDeskTop:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    .line 544
    .local v4, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;>;"
    iget-object v5, p1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 545
    .local v5, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "j":I
    :goto_2e
    if-ltz v6, :cond_48

    .line 546
    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 547
    .local v7, "lastComponentName":Landroid/content/ComponentName;
    invoke-virtual {v7, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_45

    .line 548
    invoke-virtual {v4, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    iget v0, v0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mFreeFormScale:F

    return v0

    .line 545
    .end local v7    # "lastComponentName":Landroid/content/ComponentName;
    :cond_45
    add-int/lit8 v6, v6, -0x1

    goto :goto_2e

    .line 540
    .end local v2    # "userId":I
    .end local v3    # "launchParamsFolder":Ljava/io/File;
    .end local v4    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;>;"
    .end local v5    # "componentName":Landroid/content/ComponentName;
    .end local v6    # "j":I
    :cond_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 553
    .end local v1    # "i":I
    :cond_4b
    return v0
.end method

.method public getFreeformLastTimestamp(Lcom/android/server/wm/Task;)J
    .registers 12
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 557
    const-wide/16 v0, 0x0

    if-nez p1, :cond_5

    return-wide v0

    .line 558
    :cond_5
    invoke-static {}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->isMiuiDesktopModeActive()Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 559
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    iget-object v3, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMapDeskTop:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_4b

    .line 560
    iget-object v3, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMapDeskTop:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 561
    .local v3, "userId":I
    invoke-direct {p0, v3}, Lcom/android/server/wm/LaunchParamsPersister;->getLaunchParamFolder(I)Ljava/io/File;

    move-result-object v4

    .line 562
    .local v4, "launchParamsFolder":Ljava/io/File;
    iget-object v5, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMapDeskTop:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    .line 563
    .local v5, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;>;"
    iget-object v6, p1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 564
    .local v6, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    .local v7, "j":I
    :goto_2e
    if-ltz v7, :cond_48

    .line 565
    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ComponentName;

    .line 566
    .local v8, "lastComponentName":Landroid/content/ComponentName;
    invoke-virtual {v8, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_45

    .line 567
    invoke-virtual {v5, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    iget-wide v0, v0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mTimestamp:J

    return-wide v0

    .line 564
    .end local v8    # "lastComponentName":Landroid/content/ComponentName;
    :cond_45
    add-int/lit8 v7, v7, -0x1

    goto :goto_2e

    .line 559
    .end local v3    # "userId":I
    .end local v4    # "launchParamsFolder":Ljava/io/File;
    .end local v5    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;>;"
    .end local v6    # "componentName":Landroid/content/ComponentName;
    .end local v7    # "j":I
    :cond_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 572
    .end local v2    # "i":I
    :cond_4b
    return-wide v0
.end method

.method getLaunchParams(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)V
    .registers 19
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "outParams"    # Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 395
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    if-eqz v1, :cond_c

    iget-object v4, v1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    goto :goto_e

    :cond_c
    iget-object v4, v2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 396
    .local v4, "name":Landroid/content/ComponentName;
    :goto_e
    if-eqz v1, :cond_13

    iget v5, v1, Lcom/android/server/wm/Task;->mUserId:I

    goto :goto_15

    :cond_13
    iget v5, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 398
    .local v5, "userId":I
    :goto_15
    if-eqz v1, :cond_1a

    .line 399
    iget-object v6, v1, Lcom/android/server/wm/Task;->mWindowLayoutAffinity:Ljava/lang/String;

    .local v6, "windowLayoutAffinity":Ljava/lang/String;
    goto :goto_25

    .line 401
    .end local v6    # "windowLayoutAffinity":Ljava/lang/String;
    :cond_1a
    iget-object v6, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 402
    .local v6, "layout":Landroid/content/pm/ActivityInfo$WindowLayout;
    if-nez v6, :cond_22

    const/4 v7, 0x0

    goto :goto_24

    :cond_22
    iget-object v7, v6, Landroid/content/pm/ActivityInfo$WindowLayout;->windowLayoutAffinity:Ljava/lang/String;

    :goto_24
    move-object v6, v7

    .line 405
    .local v6, "windowLayoutAffinity":Ljava/lang/String;
    :goto_25
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->reset()V

    .line 409
    invoke-static {}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->isMiuiDesktopModeActive()Z

    move-result v7

    if-eqz v7, :cond_37

    .line 410
    iget-object v7, v0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMapDeskTop:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .local v7, "map":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;>;"
    goto :goto_3f

    .line 412
    .end local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;>;"
    :cond_37
    iget-object v7, v0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 415
    .restart local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;>;"
    :goto_3f
    if-nez v7, :cond_42

    .line 416
    return-void

    .line 420
    :cond_42
    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    .line 423
    .local v8, "persistableParams":Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;
    if-eqz v6, :cond_82

    iget-object v9, v0, Lcom/android/server/wm/LaunchParamsPersister;->mWindowLayoutAffinityMap:Landroid/util/ArrayMap;

    .line 424
    invoke-virtual {v9, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_82

    .line 425
    iget-object v9, v0, Lcom/android/server/wm/LaunchParamsPersister;->mWindowLayoutAffinityMap:Landroid/util/ArrayMap;

    invoke-virtual {v9, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/ArraySet;

    .line 426
    .local v9, "candidates":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_5b
    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    move-result v11

    if-ge v10, v11, :cond_82

    .line 427
    invoke-virtual {v9, v10}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ComponentName;

    .line 428
    .local v11, "candidate":Landroid/content/ComponentName;
    invoke-interface {v7, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    .line 429
    .local v12, "candidateParams":Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;
    if-nez v12, :cond_70

    .line 430
    goto :goto_7b

    .line 433
    :cond_70
    if-eqz v8, :cond_7a

    iget-wide v13, v12, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mTimestamp:J

    iget-wide v1, v8, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mTimestamp:J

    cmp-long v1, v13, v1

    if-lez v1, :cond_7b

    .line 435
    :cond_7a
    move-object v8, v12

    .line 426
    .end local v11    # "candidate":Landroid/content/ComponentName;
    .end local v12    # "candidateParams":Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;
    :cond_7b
    :goto_7b
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    goto :goto_5b

    .line 440
    .end local v9    # "candidates":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    .end local v10    # "i":I
    :cond_82
    if-nez v8, :cond_85

    .line 441
    return-void

    .line 444
    :cond_85
    iget-object v1, v0, Lcom/android/server/wm/LaunchParamsPersister;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v8, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mDisplayUniqueId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(Ljava/lang/String;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 446
    .local v1, "display":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_97

    .line 449
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    iput-object v2, v3, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 451
    :cond_97
    iget v2, v8, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowingMode:I

    iput v2, v3, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 452
    iget-object v2, v3, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    iget-object v9, v8, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 454
    iget v2, v8, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mFreeFormScale:F

    iput v2, v3, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mFreeFormScale:F

    .line 456
    return-void
.end method

.method public hasFreeformDesktopMemory(Lcom/android/server/wm/Task;)Z
    .registers 15
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 576
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 577
    :cond_4
    invoke-static {}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->isMiuiDesktopModeActive()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 578
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    iget-object v2, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMapDeskTop:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_50

    .line 579
    iget-object v2, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMapDeskTop:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 580
    .local v2, "userId":I
    invoke-direct {p0, v2}, Lcom/android/server/wm/LaunchParamsPersister;->getLaunchParamFolder(I)Ljava/io/File;

    move-result-object v3

    .line 581
    .local v3, "launchParamsFolder":Ljava/io/File;
    iget-object v4, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMapDeskTop:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    .line 582
    .local v4, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;>;"
    iget-object v5, p1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 583
    .local v5, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    .local v6, "j":I
    :goto_2d
    if-ltz v6, :cond_4d

    .line 584
    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ComponentName;

    .line 585
    .local v8, "lastComponentName":Landroid/content/ComponentName;
    invoke-virtual {v8, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4a

    invoke-virtual {v4, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    iget-wide v9, v9, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mTimestamp:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_4a

    .line 586
    return v7

    .line 583
    .end local v8    # "lastComponentName":Landroid/content/ComponentName;
    :cond_4a
    add-int/lit8 v6, v6, -0x1

    goto :goto_2d

    .line 578
    .end local v2    # "userId":I
    .end local v3    # "launchParamsFolder":Ljava/io/File;
    .end local v4    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;>;"
    .end local v5    # "componentName":Landroid/content/ComponentName;
    .end local v6    # "j":I
    :cond_4d
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 591
    .end local v1    # "i":I
    :cond_50
    return v0
.end method

.method synthetic lambda$saveTask$0$com-android-server-wm-LaunchParamsPersister(Landroid/content/ComponentName;)Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;
    .registers 4
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 286
    new-instance v0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;-><init>(Lcom/android/server/wm/LaunchParamsPersister;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams-IA;)V

    return-object v0
.end method

.method onCleanupUser(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 136
    invoke-static {}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->isMiuiDesktopModeActive()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 137
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMapDeskTop:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_11

    .line 139
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 142
    :goto_11
    return-void
.end method

.method onSystemReady()V
    .registers 4

    .line 125
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 126
    .local v0, "pmi":Landroid/content/pm/PackageManagerInternal;
    new-instance v1, Lcom/android/server/wm/LaunchParamsPersister$PackageListObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/wm/LaunchParamsPersister$PackageListObserver;-><init>(Lcom/android/server/wm/LaunchParamsPersister;Lcom/android/server/wm/LaunchParamsPersister$PackageListObserver-IA;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageList(Landroid/content/pm/PackageManagerInternal$PackageListObserver;)Lcom/android/server/pm/PackageList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/LaunchParamsPersister;->mPackageList:Lcom/android/server/pm/PackageList;

    .line 127
    return-void
.end method

.method onUnlockUser(I)V
    .registers 2
    .param p1, "userId"    # I

    .line 130
    invoke-direct {p0, p1}, Lcom/android/server/wm/LaunchParamsPersister;->loadLaunchParams(I)V

    .line 131
    return-void
.end method

.method removeRecordForPackage(Ljava/lang/String;)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;

    .line 459
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 461
    .local v0, "fileToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-static {}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->isMiuiDesktopModeActive()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4f

    .line 462
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    iget-object v3, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMapDeskTop:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_4e

    .line 463
    iget-object v3, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMapDeskTop:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 464
    .local v3, "userId":I
    invoke-direct {p0, v3}, Lcom/android/server/wm/LaunchParamsPersister;->getLaunchParamFolder(I)Ljava/io/File;

    move-result-object v4

    .line 465
    .local v4, "launchParamsFolder":Ljava/io/File;
    iget-object v5, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMapDeskTop:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    .line 466
    .local v5, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;>;"
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v6

    sub-int/2addr v6, v2

    .local v6, "j":I
    :goto_2c
    if-ltz v6, :cond_4b

    .line 467
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 468
    .local v7, "name":Landroid/content/ComponentName;
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_48

    .line 469
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 470
    invoke-direct {p0, v4, v7}, Lcom/android/server/wm/LaunchParamsPersister;->getParamFile(Ljava/io/File;Landroid/content/ComponentName;)Ljava/io/File;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    .end local v7    # "name":Landroid/content/ComponentName;
    :cond_48
    add-int/lit8 v6, v6, -0x1

    goto :goto_2c

    .line 462
    .end local v3    # "userId":I
    .end local v4    # "launchParamsFolder":Ljava/io/File;
    .end local v5    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;>;"
    .end local v6    # "j":I
    :cond_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .end local v1    # "i":I
    :cond_4e
    goto :goto_91

    .line 476
    :cond_4f
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_50
    iget-object v3, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_91

    .line 477
    iget-object v3, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 478
    .restart local v3    # "userId":I
    invoke-direct {p0, v3}, Lcom/android/server/wm/LaunchParamsPersister;->getLaunchParamFolder(I)Ljava/io/File;

    move-result-object v4

    .line 479
    .restart local v4    # "launchParamsFolder":Ljava/io/File;
    iget-object v5, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    .line 480
    .restart local v5    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;>;"
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v6

    sub-int/2addr v6, v2

    .restart local v6    # "j":I
    :goto_6f
    if-ltz v6, :cond_8e

    .line 481
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 482
    .restart local v7    # "name":Landroid/content/ComponentName;
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8b

    .line 483
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 484
    invoke-direct {p0, v4, v7}, Lcom/android/server/wm/LaunchParamsPersister;->getParamFile(Ljava/io/File;Landroid/content/ComponentName;)Ljava/io/File;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    .end local v7    # "name":Landroid/content/ComponentName;
    :cond_8b
    add-int/lit8 v6, v6, -0x1

    goto :goto_6f

    .line 476
    .end local v3    # "userId":I
    .end local v4    # "launchParamsFolder":Ljava/io/File;
    .end local v5    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;>;"
    .end local v6    # "j":I
    :cond_8e
    add-int/lit8 v1, v1, 0x1

    goto :goto_50

    .line 490
    .end local v1    # "i":I
    :cond_91
    :goto_91
    iget-object v1, p0, Lcom/android/server/wm/LaunchParamsPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    monitor-enter v1

    .line 491
    :try_start_94
    iget-object v3, p0, Lcom/android/server/wm/LaunchParamsPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance v4, Lcom/android/server/wm/LaunchParamsPersister$$ExternalSyntheticLambda3;

    invoke-direct {v4, p1}, Lcom/android/server/wm/LaunchParamsPersister$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    const-class v5, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/PersisterQueue;->removeItems(Ljava/util/function/Predicate;Ljava/lang/Class;)V

    .line 495
    iget-object v3, p0, Lcom/android/server/wm/LaunchParamsPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance v4, Lcom/android/server/wm/LaunchParamsPersister$CleanUpComponentQueueItem;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v0, v5}, Lcom/android/server/wm/LaunchParamsPersister$CleanUpComponentQueueItem;-><init>(Lcom/android/server/wm/LaunchParamsPersister;Ljava/util/List;Lcom/android/server/wm/LaunchParamsPersister$CleanUpComponentQueueItem-IA;)V

    invoke-virtual {v3, v4, v2}, Lcom/android/server/wm/PersisterQueue;->addItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V

    .line 496
    monitor-exit v1

    .line 497
    return-void

    .line 496
    :catchall_ad
    move-exception v2

    monitor-exit v1
    :try_end_af
    .catchall {:try_start_94 .. :try_end_af} :catchall_ad

    throw v2
.end method

.method saveTask(Lcom/android/server/wm/Task;)V
    .registers 3
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 254
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/LaunchParamsPersister;->saveTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/DisplayContent;)V

    .line 255
    return-void
.end method

.method saveTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/DisplayContent;)V
    .registers 16
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "display"    # Lcom/android/server/wm/DisplayContent;

    .line 258
    iget-object v6, p1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 259
    .local v6, "name":Landroid/content/ComponentName;
    if-nez v6, :cond_5

    .line 260
    return-void

    .line 262
    :cond_5
    iget v7, p1, Lcom/android/server/wm/Task;->mUserId:I

    .line 267
    .local v7, "userId":I
    invoke-static {}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->isMiuiDesktopModeActive()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 268
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v0

    if-nez v0, :cond_14

    return-void

    .line 269
    :cond_14
    iget-object v0, p1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->getMiuiFreeFormActivityStack(I)Lcom/android/server/wm/MiuiFreeFormActivityStackStub;

    move-result-object v0

    .line 270
    .local v0, "ffas":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    if-eqz v0, :cond_4d

    invoke-virtual {v0}, Lcom/android/server/wm/MiuiFreeFormActivityStackStub;->getFreeFormScale()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-lez v1, :cond_4d

    invoke-virtual {v0}, Lcom/android/server/wm/MiuiFreeFormActivityStackStub;->getFreeFormScale()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_36

    goto :goto_4d

    .line 272
    :cond_36
    iget-object v1, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMapDeskTop:Landroid/util/SparseArray;

    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 273
    .local v1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;>;"
    if-nez v1, :cond_4b

    .line 274
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    move-object v1, v2

    .line 275
    iget-object v2, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMapDeskTop:Landroid/util/SparseArray;

    invoke-virtual {v2, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 277
    .end local v0    # "ffas":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    :cond_4b
    move-object v8, v1

    goto :goto_67

    .line 270
    .end local v1    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;>;"
    .restart local v0    # "ffas":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    :cond_4d
    :goto_4d
    return-void

    .line 278
    .end local v0    # "ffas":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    :cond_4e
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/util/ArrayMap;

    .line 279
    .restart local v1    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;>;"
    if-nez v1, :cond_66

    .line 280
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v1, v0

    .line 281
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v8, v1

    goto :goto_67

    .line 279
    :cond_66
    move-object v8, v1

    .line 286
    .end local v1    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;>;"
    .local v8, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/ComponentName;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;>;"
    :goto_67
    new-instance v0, Lcom/android/server/wm/LaunchParamsPersister$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/wm/LaunchParamsPersister$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/LaunchParamsPersister;)V

    invoke-virtual {v8, v6, v0}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    .line 291
    .local v9, "params":Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;
    invoke-static {}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->isMiuiDesktopModeActive()Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 292
    invoke-direct {p0, p1, p2, v9}, Lcom/android/server/wm/LaunchParamsPersister;->saveTaskToLaunchParamMiuiDeskTop(Lcom/android/server/wm/Task;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;)Z

    move-result v0

    move v10, v0

    .local v0, "changed":Z
    goto :goto_84

    .line 294
    .end local v0    # "changed":Z
    :cond_7f
    invoke-direct {p0, p1, p2, v9}, Lcom/android/server/wm/LaunchParamsPersister;->saveTaskToLaunchParam(Lcom/android/server/wm/Task;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;)Z

    move-result v0

    move v10, v0

    .line 297
    .local v10, "changed":Z
    :goto_84
    iget-object v0, v9, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowLayoutAffinity:Ljava/lang/String;

    invoke-direct {p0, v6, v0}, Lcom/android/server/wm/LaunchParamsPersister;->addComponentNameToLaunchParamAffinityMapIfNotNull(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 299
    if-eqz v10, :cond_9c

    .line 300
    iget-object v11, p0, Lcom/android/server/wm/LaunchParamsPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance v12, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;

    const/4 v5, 0x0

    move-object v0, v12

    move-object v1, p0

    move v2, v7

    move-object v3, v6

    move-object v4, v9

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;-><init>(Lcom/android/server/wm/LaunchParamsPersister;ILandroid/content/ComponentName;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem-IA;)V

    const/4 v0, 0x0

    invoke-virtual {v11, v12, v0}, Lcom/android/server/wm/PersisterQueue;->updateLastOrAddItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V

    .line 304
    :cond_9c
    return-void
.end method
