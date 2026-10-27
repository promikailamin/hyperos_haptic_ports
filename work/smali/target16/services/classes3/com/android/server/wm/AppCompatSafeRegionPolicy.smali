.class public Lcom/android/server/wm/AppCompatSafeRegionPolicy;
.super Ljava/lang/Object;
.source "AppCompatSafeRegionPolicy.java"


# instance fields
.field public final mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public final mAllowSafeRegionLetterboxing:Ljava/util/function/BooleanSupplier;

.field public final mLatestSafeRegionBounds:Landroid/graphics/Rect;

.field public mNeedsSafeRegionBounds:Z

.field public final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public static synthetic $r8$lambda$9PpbIrRxIXQmlpsG9oaSF15leV0(Lcom/android/server/wm/AppCompatSafeRegionPolicy;Landroid/content/pm/PackageManager;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->lambda$new$0(Landroid/content/pm/PackageManager;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/PackageManager;)V
    .registers 4

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->mNeedsSafeRegionBounds:Z

    .line 43
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->mLatestSafeRegionBounds:Landroid/graphics/Rect;

    .line 52
    iput-object p1, p0, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 53
    iput-object p2, p0, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 54
    new-instance p1, Lcom/android/server/wm/AppCompatSafeRegionPolicy$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p2}, Lcom/android/server/wm/AppCompatSafeRegionPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/AppCompatSafeRegionPolicy;Landroid/content/pm/PackageManager;)V

    invoke-static {p1}, Lcom/android/server/wm/AppCompatUtils;->asLazy(Ljava/util/function/BooleanSupplier;)Ljava/util/function/BooleanSupplier;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->mAllowSafeRegionLetterboxing:Ljava/util/function/BooleanSupplier;

    return-void
.end method


# virtual methods
.method public allowSafeRegionLetterboxing()Z
    .registers 1

    .line 154
    iget-object p0, p0, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->mAllowSafeRegionLetterboxing:Ljava/util/function/BooleanSupplier;

    invoke-interface {p0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result p0

    return p0
.end method

.method public final allowSafeRegionLetterboxing(Landroid/content/pm/PackageManager;)Z
    .registers 5

    .line 74
    :try_start_0
    const-string v0, "android.window.PROPERTY_COMPAT_ALLOW_SAFE_REGION_LETTERBOXING"

    iget-object p0, p0, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/content/pm/PackageManager;->getPropertyAsUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PackageManager$Property;

    move-result-object p0

    .line 78
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result p0
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_11} :catch_12

    return p0

    :catch_12
    const/4 p0, 0x0

    return p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 158
    iget-boolean v0, p0, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->mNeedsSafeRegionBounds:Z

    if-eqz v0, :cond_33

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mNeedsSafeRegionBounds=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " latestSafeRegionBoundsOnActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->getLatestSafeRegionBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 163
    :cond_33
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->isLetterboxedForSafeRegionOnlyAllowed()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isLetterboxForSafeRegionOnlyAllowed=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 166
    :cond_4d
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->allowSafeRegionLetterboxing()Z

    move-result p0

    if-nez p0, :cond_67

    .line 167
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " allowSafeRegionLetterboxing=false"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_67
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;)V
    .registers 4

    .line 173
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->getLatestSafeRegionBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 174
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->getLatestSafeRegionBounds()Landroid/graphics/Rect;

    move-result-object p0

    const-wide v0, 0x10b00000031L

    invoke-virtual {p0, p1, v0, v1}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_12
    return-void
.end method

.method public getLatestSafeRegionBounds()Landroid/graphics/Rect;
    .registers 2

    .line 94
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->allowSafeRegionLetterboxing()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->getNeedsSafeRegionBounds()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_21

    .line 99
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSafeRegionBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 101
    iget-object p0, p0, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->mLatestSafeRegionBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-object v0

    .line 103
    :cond_1b
    iget-object p0, p0, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->mLatestSafeRegionBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    return-object v0

    .line 95
    :cond_21
    :goto_21
    iget-object p0, p0, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->mLatestSafeRegionBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getNeedsSafeRegionBounds()Z
    .registers 1

    .line 149
    iget-boolean p0, p0, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->mNeedsSafeRegionBounds:Z

    return p0
.end method

.method public isLetterboxedForSafeRegionOnlyAllowed()Z
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->areBoundsLetterboxed()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->getLatestSafeRegionBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object p0, p0, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 135
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getOrganizedTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p0

    if-nez p0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$new$0(Landroid/content/pm/PackageManager;)Z
    .registers 6

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->allowSafeRegionLetterboxing(Landroid/content/pm/PackageManager;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 61
    :cond_8
    :try_start_8
    const-string v0, "android.window.PROPERTY_COMPAT_ALLOW_SAFE_REGION_LETTERBOXING"

    iget-object v2, p0, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 63
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 64
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    iget-object p0, p0, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget p0, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 61
    invoke-virtual {p1, v0, v2, v3, p0}, Landroid/content/pm/PackageManager;->getPropertyAsUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PackageManager$Property;

    move-result-object p0

    .line 65
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result p0
    :try_end_26
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_26} :catch_27

    return p0

    :catch_27
    return v1
.end method

.method public resolveSafeRegionBoundsConfigurationIfNeeded(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .registers 5

    .line 115
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->isLetterboxedForSafeRegionOnlyAllowed()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_f

    goto :goto_1b

    .line 118
    :cond_f
    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v1, p0, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->mLatestSafeRegionBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    .line 119
    iget-object p0, p0, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityRecord;->computeConfigByResolveHint(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    :cond_1b
    :goto_1b
    return-void
.end method

.method public setNeedsSafeRegionBounds(Z)V
    .registers 2

    .line 142
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->mNeedsSafeRegionBounds:Z

    return-void
.end method
