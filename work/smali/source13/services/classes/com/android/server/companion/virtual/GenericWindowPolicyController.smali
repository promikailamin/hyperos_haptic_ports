.class public Lcom/android/server/companion/virtual/GenericWindowPolicyController;
.super Landroid/window/DisplayWindowPolicyController;
.source "GenericWindowPolicyController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityBlockedCallback;,
        Lcom/android/server/companion/virtual/GenericWindowPolicyController$RunningAppsChangedListener;
    }
.end annotation


# static fields
.field public static final ALLOW_SECURE_ACTIVITY_DISPLAY_ON_REMOTE_DEVICE:J = 0xc05e3dfL

.field private static final BLOCKED_APP_STREAMING_COMPONENT:Landroid/content/ComponentName;

.field private static final TAG:Ljava/lang/String; = "GenericWindowPolicyController"


# instance fields
.field private final mActivityBlockedCallback:Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityBlockedCallback;

.field private final mActivityListener:Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;

.field private final mAllowedActivities:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mAllowedCrossTaskNavigations:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mAllowedUsers:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final mBlockedActivities:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mBlockedCrossTaskNavigations:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefaultActivityPolicy:I

.field private final mDeviceProfile:Ljava/lang/String;

.field private mDisplayId:I

.field private final mGenericWindowPolicyControllerLock:Ljava/lang/Object;

.field private final mHandler:Landroid/os/Handler;

.field private final mRunningAppsChangedListener:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/companion/virtual/GenericWindowPolicyController$RunningAppsChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field final mRunningUids:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 76
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/internal/app/BlockedAppStreamingActivity;

    .line 77
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->BLOCKED_APP_STREAMING_COMPONENT:Landroid/content/ComponentName;

    .line 76
    return-void
.end method

.method public constructor <init>(IILandroid/util/ArraySet;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ILandroid/companion/virtual/VirtualDeviceManager$ActivityListener;Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityBlockedCallback;Ljava/lang/String;)V
    .registers 14
    .param p1, "windowFlags"    # I
    .param p2, "systemWindowFlags"    # I
    .param p8, "defaultActivityPolicy"    # I
    .param p9, "activityListener"    # Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;
    .param p10, "activityBlockedCallback"    # Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityBlockedCallback;
    .param p11, "deviceProfile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/util/ArraySet<",
            "Landroid/os/UserHandle;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;I",
            "Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;",
            "Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityBlockedCallback;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 146
    .local p3, "allowedUsers":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/os/UserHandle;>;"
    .local p4, "allowedCrossTaskNavigations":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    .local p5, "blockedCrossTaskNavigations":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    .local p6, "allowedActivities":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    .local p7, "blockedActivities":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-direct {p0}, Landroid/window/DisplayWindowPolicyController;-><init>()V

    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mGenericWindowPolicyControllerLock:Ljava/lang/Object;

    .line 100
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDisplayId:I

    .line 102
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mRunningUids:Landroid/util/ArraySet;

    .line 106
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mHandler:Landroid/os/Handler;

    .line 107
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mRunningAppsChangedListener:Landroid/util/ArraySet;

    .line 147
    iput-object p3, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mAllowedUsers:Landroid/util/ArraySet;

    .line 148
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p4}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mAllowedCrossTaskNavigations:Landroid/util/ArraySet;

    .line 149
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p5}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mBlockedCrossTaskNavigations:Landroid/util/ArraySet;

    .line 150
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p6}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mAllowedActivities:Landroid/util/ArraySet;

    .line 151
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p7}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mBlockedActivities:Landroid/util/ArraySet;

    .line 152
    iput p8, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDefaultActivityPolicy:I

    .line 153
    iput-object p10, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityBlockedCallback:Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityBlockedCallback;

    .line 154
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->setInterestedWindowFlags(II)V

    .line 155
    iput-object p9, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityListener:Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;

    .line 156
    iput-object p11, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDeviceProfile:Ljava/lang/String;

    .line 157
    return-void
.end method

.method private canContainActivity(Landroid/content/pm/ActivityInfo;II)Z
    .registers 11
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "windowFlags"    # I
    .param p3, "systemWindowFlags"    # I

    .line 300
    iget v0, p1, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_9

    .line 301
    return v1

    .line 303
    :cond_9
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 304
    .local v0, "activityComponent":Landroid/content/ComponentName;
    sget-object v2, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->BLOCKED_APP_STREAMING_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v2, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_17

    .line 306
    return v3

    .line 308
    :cond_17
    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 309
    invoke-static {v2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 310
    .local v2, "activityUser":Landroid/os/UserHandle;
    iget-object v4, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mAllowedUsers:Landroid/util/ArraySet;

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "GenericWindowPolicyController"

    if-nez v4, :cond_40

    .line 311
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Virtual device activity not allowed from user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    return v1

    .line 314
    :cond_40
    iget v4, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDefaultActivityPolicy:I

    if-nez v4, :cond_63

    iget-object v4, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mBlockedActivities:Landroid/util/ArraySet;

    .line 315
    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_63

    .line 316
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Virtual device blocking launch of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    return v1

    .line 319
    :cond_63
    iget v4, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDefaultActivityPolicy:I

    if-ne v4, v3, :cond_86

    iget-object v4, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mAllowedActivities:Landroid/util/ArraySet;

    .line 320
    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_86

    .line 321
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not in the allowed list."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    return v1

    .line 324
    :cond_86
    const-wide/32 v4, 0xc05e3df

    iget-object v6, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v5, v6, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v4

    if-nez v4, :cond_9c

    .line 327
    and-int/lit16 v4, p2, 0x2000

    if-eqz v4, :cond_96

    .line 328
    return v1

    .line 330
    :cond_96
    const/high16 v4, 0x80000

    and-int/2addr v4, p3

    if-eqz v4, :cond_9c

    .line 331
    return v1

    .line 334
    :cond_9c
    return v3
.end method


# virtual methods
.method public canActivityBeLaunched(Landroid/content/pm/ActivityInfo;IIZ)Z
    .registers 10
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "windowingMode"    # I
    .param p3, "launchingFromDisplayId"    # I
    .param p4, "isNewTask"    # Z

    .line 198
    invoke-virtual {p0, p2}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->isWindowingModeSupported(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 199
    return v1

    .line 202
    :cond_8
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 203
    .local v0, "activityComponent":Landroid/content/ComponentName;
    sget-object v2, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->BLOCKED_APP_STREAMING_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v2, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_16

    .line 205
    return v3

    .line 208
    :cond_16
    invoke-direct {p0, p1, v1, v1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->canContainActivity(Landroid/content/pm/ActivityInfo;II)Z

    move-result v2

    if-nez v2, :cond_24

    .line 209
    iget-object v2, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityBlockedCallback:Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityBlockedCallback;

    iget v3, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDisplayId:I

    invoke-interface {v2, v3, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityBlockedCallback;->onActivityBlocked(ILandroid/content/pm/ActivityInfo;)V

    .line 210
    return v1

    .line 213
    :cond_24
    if-nez p3, :cond_27

    .line 214
    return v3

    .line 216
    :cond_27
    const-string v2, "GenericWindowPolicyController"

    if-eqz p4, :cond_59

    iget-object v4, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mBlockedCrossTaskNavigations:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_59

    iget-object v4, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mBlockedCrossTaskNavigations:Landroid/util/ArraySet;

    .line 217
    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_59

    .line 218
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Virtual device blocking cross task navigation of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v2, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityBlockedCallback:Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityBlockedCallback;

    iget v3, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDisplayId:I

    invoke-interface {v2, v3, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityBlockedCallback;->onActivityBlocked(ILandroid/content/pm/ActivityInfo;)V

    .line 220
    return v1

    .line 222
    :cond_59
    if-eqz p4, :cond_89

    iget-object v4, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mAllowedCrossTaskNavigations:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_89

    iget-object v4, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mAllowedCrossTaskNavigations:Landroid/util/ArraySet;

    .line 223
    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_89

    .line 224
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Virtual device not allowing cross task navigation of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v2, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityBlockedCallback:Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityBlockedCallback;

    iget v3, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDisplayId:I

    invoke-interface {v2, v3, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityBlockedCallback;->onActivityBlocked(ILandroid/content/pm/ActivityInfo;)V

    .line 227
    return v1

    .line 230
    :cond_89
    return v3
.end method

.method public canContainActivities(Ljava/util/List;I)Z
    .registers 9
    .param p2, "windowingMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ActivityInfo;",
            ">;I)Z"
        }
    .end annotation

    .line 179
    .local p1, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ActivityInfo;>;"
    invoke-virtual {p0, p2}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->isWindowingModeSupported(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 180
    return v1

    .line 183
    :cond_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 184
    .local v0, "activityCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v0, :cond_26

    .line 185
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ActivityInfo;

    .line 186
    .local v3, "aInfo":Landroid/content/pm/ActivityInfo;
    invoke-direct {p0, v3, v1, v1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->canContainActivity(Landroid/content/pm/ActivityInfo;II)Z

    move-result v4

    if-nez v4, :cond_23

    .line 187
    iget-object v4, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityBlockedCallback:Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityBlockedCallback;

    iget v5, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDisplayId:I

    invoke-interface {v4, v5, v3}, Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityBlockedCallback;->onActivityBlocked(ILandroid/content/pm/ActivityInfo;)V

    .line 188
    return v1

    .line 184
    .end local v3    # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 191
    .end local v2    # "i":I
    :cond_26
    const/4 v1, 0x1

    return v1
.end method

.method public canShowTasksInRecents()Z
    .registers 6

    .line 275
    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDeviceProfile:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 276
    return v1

    .line 279
    :cond_6
    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    sparse-switch v3, :sswitch_data_28

    :cond_f
    goto :goto_23

    :sswitch_10
    const-string v3, "android.app.role.SYSTEM_AUTOMOTIVE_PROJECTION"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v2, v4

    goto :goto_23

    :sswitch_1a
    const-string v3, "android.app.role.COMPANION_DEVICE_APP_STREAMING"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v2, v1

    :goto_23
    packed-switch v2, :pswitch_data_32

    .line 284
    return v1

    .line 281
    :pswitch_27
    return v4

    :sswitch_data_28
    .sparse-switch
        -0x3c033486 -> :sswitch_1a
        0xbddb975 -> :sswitch_10
    .end sparse-switch

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_27
    .end packed-switch
.end method

.method containsUid(I)Z
    .registers 5
    .param p1, "uid"    # I

    .line 293
    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mGenericWindowPolicyControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 294
    :try_start_3
    iget-object v1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mRunningUids:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 295
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public keepActivityOnWindowFlagsChanged(Landroid/content/pm/ActivityInfo;II)Z
    .registers 6
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "windowFlags"    # I
    .param p3, "systemWindowFlags"    # I

    .line 237
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->canContainActivity(Landroid/content/pm/ActivityInfo;II)Z

    move-result v0

    if-nez v0, :cond_f

    .line 238
    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityBlockedCallback:Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityBlockedCallback;

    iget v1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDisplayId:I

    invoke-interface {v0, v1, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityBlockedCallback;->onActivityBlocked(ILandroid/content/pm/ActivityInfo;)V

    .line 239
    const/4 v0, 0x0

    return v0

    .line 241
    :cond_f
    const/4 v0, 0x1

    return v0
.end method

.method synthetic lambda$onRunningAppsChanged$1$com-android-server-companion-virtual-GenericWindowPolicyController()V
    .registers 3

    .line 263
    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityListener:Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;

    iget v1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDisplayId:I

    invoke-interface {v0, v1}, Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;->onDisplayEmpty(I)V

    return-void
.end method

.method synthetic lambda$onRunningAppsChanged$2$com-android-server-companion-virtual-GenericWindowPolicyController(Landroid/util/ArraySet;)V
    .registers 4
    .param p1, "runningUids"    # Landroid/util/ArraySet;

    .line 267
    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mRunningAppsChangedListener:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/companion/virtual/GenericWindowPolicyController$RunningAppsChangedListener;

    .line 268
    .local v1, "listener":Lcom/android/server/companion/virtual/GenericWindowPolicyController$RunningAppsChangedListener;
    invoke-interface {v1, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController$RunningAppsChangedListener;->onRunningAppsChanged(Landroid/util/ArraySet;)V

    .line 269
    .end local v1    # "listener":Lcom/android/server/companion/virtual/GenericWindowPolicyController$RunningAppsChangedListener;
    goto :goto_6

    .line 270
    :cond_16
    return-void
.end method

.method synthetic lambda$onTopActivityChanged$0$com-android-server-companion-virtual-GenericWindowPolicyController(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "topActivity"    # Landroid/content/ComponentName;

    .line 252
    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityListener:Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;

    iget v1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDisplayId:I

    invoke-interface {v0, v1, p1}, Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;->onTopActivityChanged(ILandroid/content/ComponentName;)V

    return-void
.end method

.method public onRunningAppsChanged(Landroid/util/ArraySet;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 258
    .local p1, "runningUids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mGenericWindowPolicyControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 259
    :try_start_3
    iget-object v1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mRunningUids:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 260
    iget-object v1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mRunningUids:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 261
    iget-object v1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityListener:Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mRunningUids:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 263
    iget-object v1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/virtual/GenericWindowPolicyController;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 265
    :cond_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_2f

    .line 266
    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/companion/virtual/GenericWindowPolicyController;Landroid/util/ArraySet;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 271
    return-void

    .line 265
    :catchall_2f
    move-exception v1

    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public onTopActivityChanged(Landroid/content/ComponentName;I)V
    .registers 5
    .param p1, "topActivity"    # Landroid/content/ComponentName;
    .param p2, "uid"    # I

    .line 249
    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mActivityListener:Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;

    if-eqz v0, :cond_10

    if-eqz p1, :cond_10

    .line 251
    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/companion/virtual/GenericWindowPolicyController;Landroid/content/ComponentName;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 254
    :cond_10
    return-void
.end method

.method public registerRunningAppsChangedListener(Lcom/android/server/companion/virtual/GenericWindowPolicyController$RunningAppsChangedListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/companion/virtual/GenericWindowPolicyController$RunningAppsChangedListener;

    .line 168
    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mRunningAppsChangedListener:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 169
    return-void
.end method

.method public setDisplayId(I)V
    .registers 2
    .param p1, "displayId"    # I

    .line 163
    iput p1, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mDisplayId:I

    .line 164
    return-void
.end method

.method public unregisterRunningAppsChangedListener(Lcom/android/server/companion/virtual/GenericWindowPolicyController$RunningAppsChangedListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/companion/virtual/GenericWindowPolicyController$RunningAppsChangedListener;

    .line 173
    iget-object v0, p0, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->mRunningAppsChangedListener:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 174
    return-void
.end method
