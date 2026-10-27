.class Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;
.super Ljava/lang/Object;
.source "DeviceManagementResourcesProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$Injector;,
        Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;
    }
.end annotation


# static fields
.field private static final ATTR_DRAWABLE_ID:Ljava/lang/String; = "drawable-id"

.field private static final ATTR_DRAWABLE_SOURCE:Ljava/lang/String; = "drawable-source"

.field private static final ATTR_DRAWABLE_STYLE:Ljava/lang/String; = "drawable-style"

.field private static final ATTR_SOURCE_ID:Ljava/lang/String; = "source-id"

.field private static final TAG:Ljava/lang/String; = "DevicePolicyManagerService"

.field private static final TAG_DRAWABLE_SOURCE_ENTRY:Ljava/lang/String; = "drawable-source-entry"

.field private static final TAG_DRAWABLE_STYLE_ENTRY:Ljava/lang/String; = "drawable-style-entry"

.field private static final TAG_ROOT:Ljava/lang/String; = "root"

.field private static final TAG_STRING_ENTRY:Ljava/lang/String; = "string-entry"

.field private static final UPDATED_RESOURCES_XML:Ljava/lang/String; = "updated_resources.xml"


# instance fields
.field private final mInjector:Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$Injector;

.field private final mLock:Ljava/lang/Object;

.field private final mUpdatedDrawablesForSource:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/admin/ParcelableResource;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final mUpdatedDrawablesForStyle:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/admin/ParcelableResource;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mUpdatedStrings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/admin/ParcelableResource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmUpdatedDrawablesForSource(Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForSource:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUpdatedDrawablesForStyle(Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForStyle:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUpdatedStrings(Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedStrings:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetResourcesFile(Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;)Ljava/io/File;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->getResourcesFile()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>()V
    .registers 2

    .line 85
    new-instance v0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$Injector;

    invoke-direct {v0}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$Injector;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;-><init>(Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$Injector;)V

    .line 86
    return-void
.end method

.method constructor <init>(Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$Injector;)V
    .registers 3
    .param p1, "injector"    # Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$Injector;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForStyle:Ljava/util/Map;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForSource:Ljava/util/Map;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedStrings:Ljava/util/Map;

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mLock:Ljava/lang/Object;

    .line 89
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$Injector;

    iput-object v0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mInjector:Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$Injector;

    .line 90
    return-void
.end method

.method private getResourcesFile()Ljava/io/File;
    .registers 4

    .line 278
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mInjector:Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$Injector;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$Injector;->environmentGetDataSystemDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "updated_resources.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private updateDrawable(Ljava/lang/String;Ljava/lang/String;Landroid/app/admin/ParcelableResource;)Z
    .registers 7
    .param p1, "drawableId"    # Ljava/lang/String;
    .param p2, "drawableStyle"    # Ljava/lang/String;
    .param p3, "updatableResource"    # Landroid/app/admin/ParcelableResource;

    .line 126
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 127
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForStyle:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 128
    iget-object v1, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForStyle:Ljava/util/Map;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :cond_15
    iget-object v1, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForStyle:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/ParcelableResource;

    .line 132
    .local v1, "current":Landroid/app/admin/ParcelableResource;
    invoke-virtual {p3, v1}, Landroid/app/admin/ParcelableResource;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 133
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 135
    :cond_2c
    iget-object v2, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForStyle:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const/4 v2, 0x1

    monitor-exit v0

    return v2

    .line 137
    .end local v1    # "current":Landroid/app/admin/ParcelableResource;
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method private updateDrawableForSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/admin/ParcelableResource;)Z
    .registers 9
    .param p1, "drawableId"    # Ljava/lang/String;
    .param p2, "drawableSource"    # Ljava/lang/String;
    .param p3, "drawableStyle"    # Ljava/lang/String;
    .param p4, "updatableResource"    # Landroid/app/admin/ParcelableResource;

    .line 143
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 144
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForSource:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 145
    iget-object v1, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForSource:Ljava/util/Map;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :cond_15
    iget-object v1, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForSource:Ljava/util/Map;

    .line 148
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 149
    .local v1, "drawablesForId":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Landroid/app/admin/ParcelableResource;>;>;"
    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    .line 150
    iget-object v2, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForSource:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v2, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :cond_33
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/ParcelableResource;

    .line 153
    .local v2, "current":Landroid/app/admin/ParcelableResource;
    invoke-virtual {p4, v2}, Landroid/app/admin/ParcelableResource;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 154
    const/4 v3, 0x0

    monitor-exit v0

    return v3

    .line 156
    :cond_48
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const/4 v3, 0x1

    monitor-exit v0

    return v3

    .line 158
    .end local v1    # "drawablesForId":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Landroid/app/admin/ParcelableResource;>;>;"
    .end local v2    # "current":Landroid/app/admin/ParcelableResource;
    :catchall_54
    move-exception v1

    monitor-exit v0
    :try_end_56
    .catchall {:try_start_3 .. :try_end_56} :catchall_54

    throw v1
.end method

.method private updateString(Ljava/lang/String;Landroid/app/admin/ParcelableResource;)Z
    .registers 6
    .param p1, "stringId"    # Ljava/lang/String;
    .param p2, "updatableResource"    # Landroid/app/admin/ParcelableResource;

    .line 231
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 232
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedStrings:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/ParcelableResource;

    .line 233
    .local v1, "current":Landroid/app/admin/ParcelableResource;
    invoke-virtual {p2, v1}, Landroid/app/admin/ParcelableResource;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 234
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 236
    :cond_14
    iget-object v2, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedStrings:Ljava/util/Map;

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    const/4 v2, 0x1

    monitor-exit v0

    return v2

    .line 238
    .end local v1    # "current":Landroid/app/admin/ParcelableResource;
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method private write()V
    .registers 3

    .line 267
    const-string v0, "DevicePolicyManagerService"

    const-string v1, "Writing updated resources to file."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    new-instance v0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;-><init>(Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter-IA;)V

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->writeToFileLocked()V

    .line 269
    return-void
.end method


# virtual methods
.method getDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/admin/ParcelableResource;
    .registers 7
    .param p1, "drawableId"    # Ljava/lang/String;
    .param p2, "drawableStyle"    # Ljava/lang/String;
    .param p3, "drawableSource"    # Ljava/lang/String;

    .line 182
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 183
    :try_start_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->getDrawableForSourceLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/admin/ParcelableResource;

    move-result-object v1

    .line 185
    .local v1, "resource":Landroid/app/admin/ParcelableResource;
    if-eqz v1, :cond_b

    .line 186
    monitor-exit v0

    return-object v1

    .line 188
    :cond_b
    iget-object v2, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForStyle:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 189
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 191
    :cond_16
    iget-object v2, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForStyle:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/ParcelableResource;

    monitor-exit v0

    return-object v2

    .line 192
    .end local v1    # "resource":Landroid/app/admin/ParcelableResource;
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v1
.end method

.method getDrawableForSourceLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/admin/ParcelableResource;
    .registers 6
    .param p1, "drawableId"    # Ljava/lang/String;
    .param p2, "drawableStyle"    # Ljava/lang/String;
    .param p3, "drawableSource"    # Ljava/lang/String;

    .line 198
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForSource:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 199
    return-object v1

    .line 201
    :cond_a
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForSource:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 202
    return-object v1

    .line 204
    :cond_19
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForSource:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/ParcelableResource;

    return-object v0
.end method

.method getString(Ljava/lang/String;)Landroid/app/admin/ParcelableResource;
    .registers 4
    .param p1, "stringId"    # Ljava/lang/String;

    .line 261
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 262
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedStrings:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/ParcelableResource;

    monitor-exit v0

    return-object v1

    .line 263
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method load()V
    .registers 4

    .line 272
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 273
    :try_start_3
    new-instance v1, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;-><init>(Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter-IA;)V

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->readFromFileLocked()V

    .line 274
    monitor-exit v0

    .line 275
    return-void

    .line 274
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method removeDrawables(Ljava/util/List;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 165
    .local p1, "drawableIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 166
    const/4 v1, 0x0

    .line 167
    .local v1, "removed":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    :try_start_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v2, v3, :cond_28

    .line 168
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 169
    .local v3, "drawableId":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForStyle:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_23

    iget-object v6, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForSource:Ljava/util/Map;

    .line 170
    invoke-interface {v6, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_24

    :cond_23
    move v4, v5

    :cond_24
    or-int/2addr v1, v4

    .line 167
    .end local v3    # "drawableId":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 172
    .end local v2    # "i":I
    :cond_28
    if-nez v1, :cond_2c

    .line 173
    monitor-exit v0

    return v4

    .line 175
    :cond_2c
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->write()V

    .line 176
    monitor-exit v0

    return v5

    .line 177
    .end local v1    # "removed":Z
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_5 .. :try_end_33} :catchall_31

    throw v1
.end method

.method removeStrings(Ljava/util/List;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 245
    .local p1, "stringIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 246
    const/4 v1, 0x0

    .line 247
    .local v1, "removed":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    :try_start_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v2, v3, :cond_20

    .line 248
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 249
    .local v3, "stringId":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedStrings:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1c

    move v4, v5

    :cond_1c
    or-int/2addr v1, v4

    .line 247
    .end local v3    # "stringId":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 251
    .end local v2    # "i":I
    :cond_20
    if-nez v1, :cond_24

    .line 252
    monitor-exit v0

    return v4

    .line 254
    :cond_24
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->write()V

    .line 255
    monitor-exit v0

    return v5

    .line 256
    .end local v1    # "removed":Z
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method updateDrawables(Ljava/util/List;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/admin/DevicePolicyDrawableResource;",
            ">;)Z"
        }
    .end annotation

    .line 96
    .local p1, "drawables":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/DevicePolicyDrawableResource;>;"
    const/4 v0, 0x0

    .line 97
    .local v0, "updated":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5a

    .line 98
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyDrawableResource;

    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyDrawableResource;->getDrawableId()Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, "drawableId":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyDrawableResource;

    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyDrawableResource;->getDrawableStyle()Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, "drawableStyle":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyDrawableResource;

    invoke-virtual {v4}, Landroid/app/admin/DevicePolicyDrawableResource;->getDrawableSource()Ljava/lang/String;

    move-result-object v4

    .line 101
    .local v4, "drawableSource":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/DevicePolicyDrawableResource;

    invoke-virtual {v5}, Landroid/app/admin/DevicePolicyDrawableResource;->getResource()Landroid/app/admin/ParcelableResource;

    move-result-object v5

    .line 103
    .local v5, "resource":Landroid/app/admin/ParcelableResource;
    const-string v6, "drawableId must be provided."

    invoke-static {v2, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    const-string v6, "drawableStyle must be provided."

    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 105
    const-string v6, "drawableSource must be provided."

    invoke-static {v4, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 106
    const-string v6, "ParcelableResource must be provided."

    invoke-static {v5, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 108
    const-string v6, "UNDEFINED"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_52

    .line 109
    invoke-direct {p0, v2, v3, v5}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->updateDrawable(Ljava/lang/String;Ljava/lang/String;Landroid/app/admin/ParcelableResource;)Z

    move-result v6

    or-int/2addr v0, v6

    goto :goto_57

    .line 111
    :cond_52
    invoke-direct {p0, v2, v4, v3, v5}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->updateDrawableForSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/admin/ParcelableResource;)Z

    move-result v6

    or-int/2addr v0, v6

    .line 97
    .end local v2    # "drawableId":Ljava/lang/String;
    .end local v3    # "drawableStyle":Ljava/lang/String;
    .end local v4    # "drawableSource":Ljava/lang/String;
    .end local v5    # "resource":Landroid/app/admin/ParcelableResource;
    :goto_57
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 115
    .end local v1    # "i":I
    :cond_5a
    if-nez v0, :cond_5e

    .line 116
    const/4 v1, 0x0

    return v1

    .line 118
    :cond_5e
    iget-object v1, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 119
    :try_start_61
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->write()V

    .line 120
    monitor-exit v1

    const/4 v1, 0x1

    return v1

    .line 121
    :catchall_67
    move-exception v2

    monitor-exit v1
    :try_end_69
    .catchall {:try_start_61 .. :try_end_69} :catchall_67

    throw v2
.end method

.method updateStrings(Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/admin/DevicePolicyStringResource;",
            ">;)Z"
        }
    .end annotation

    .line 211
    .local p1, "strings":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/DevicePolicyStringResource;>;"
    const/4 v0, 0x0

    .line 212
    .local v0, "updated":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2f

    .line 213
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyStringResource;

    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyStringResource;->getStringId()Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, "stringId":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyStringResource;

    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyStringResource;->getResource()Landroid/app/admin/ParcelableResource;

    move-result-object v3

    .line 216
    .local v3, "resource":Landroid/app/admin/ParcelableResource;
    const-string/jumbo v4, "stringId must be provided."

    invoke-static {v2, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 217
    const-string v4, "ParcelableResource must be provided."

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 219
    invoke-direct {p0, v2, v3}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->updateString(Ljava/lang/String;Landroid/app/admin/ParcelableResource;)Z

    move-result v4

    or-int/2addr v0, v4

    .line 212
    .end local v2    # "stringId":Ljava/lang/String;
    .end local v3    # "resource":Landroid/app/admin/ParcelableResource;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 221
    .end local v1    # "i":I
    :cond_2f
    if-nez v0, :cond_33

    .line 222
    const/4 v1, 0x0

    return v1

    .line 224
    :cond_33
    iget-object v1, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 225
    :try_start_36
    invoke-direct {p0}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->write()V

    .line 226
    monitor-exit v1

    const/4 v1, 0x1

    return v1

    .line 227
    :catchall_3c
    move-exception v2

    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_36 .. :try_end_3e} :catchall_3c

    throw v2
.end method
