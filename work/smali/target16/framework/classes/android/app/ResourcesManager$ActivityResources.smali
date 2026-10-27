.class Landroid/app/ResourcesManager$ActivityResources;
.super Ljava/lang/Object;
.source "ResourcesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ResourcesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityResources"
.end annotation


# instance fields
.field public final greylist-max-o activityResources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/ResourcesManager$ActivityResource;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist activityResourcesQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation
.end field

.field public final greylist-max-o overrideConfig:Landroid/content/res/Configuration;

.field public blacklist overrideDisplayId:I


# direct methods
.method private constructor greylist <init>()V
    .registers 2

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    .line 297
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    .line 299
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager$ActivityResources;->activityResourcesQueue:Ljava/lang/ref/ReferenceQueue;

    .line 302
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/ResourcesManager-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/app/ResourcesManager$ActivityResources;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist countLiveReferences()I
    .registers 4

    .line 306
    nop

    .line 307
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    iget-object v2, p0, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_22

    .line 308
    iget-object v2, p0, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ResourcesManager$ActivityResource;

    iget-object v2, v2, Landroid/app/ResourcesManager$ActivityResource;->resources:Ljava/lang/ref/WeakReference;

    .line 309
    if-eqz v2, :cond_1f

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 310
    add-int/lit8 v1, v1, 0x1

    .line 307
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 313
    :cond_22
    return v1
.end method
