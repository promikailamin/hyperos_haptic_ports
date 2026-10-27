.class public final Landroid/content/om/FabricatedOverlay$Builder;
.super Ljava/lang/Object;
.source "FabricatedOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/om/FabricatedOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/FabricatedOverlayInternalEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mOwningPackage:Ljava/lang/String;

.field private blacklist mTargetOverlayable:Ljava/lang/String;

.field private final blacklist mTargetPackage:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    const-string v0, ""

    iput-object v0, p0, Landroid/content/om/FabricatedOverlay$Builder;->mTargetOverlayable:Ljava/lang/String;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/om/FabricatedOverlay$Builder;->mEntries:Ljava/util/ArrayList;

    .line 138
    const-string v0, "\'owningPackage\' must not be empty nor null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 140
    const-string v0, "\'name\'\' must not be empty nor null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 142
    const-string v0, "\'targetPackage\' must not be empty nor null"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 145
    iput-object p1, p0, Landroid/content/om/FabricatedOverlay$Builder;->mOwningPackage:Ljava/lang/String;

    .line 146
    iput-object p2, p0, Landroid/content/om/FabricatedOverlay$Builder;->mName:Ljava/lang/String;

    .line 147
    iput-object p3, p0, Landroid/content/om/FabricatedOverlay$Builder;->mTargetPackage:Ljava/lang/String;

    .line 148
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/content/om/FabricatedOverlay;
    .registers 7

    .line 326
    new-instance v0, Landroid/content/om/FabricatedOverlay;

    iget-object v1, p0, Landroid/content/om/FabricatedOverlay$Builder;->mOwningPackage:Ljava/lang/String;

    iget-object v2, p0, Landroid/content/om/FabricatedOverlay$Builder;->mName:Ljava/lang/String;

    iget-object v3, p0, Landroid/content/om/FabricatedOverlay$Builder;->mTargetPackage:Ljava/lang/String;

    iget-object v4, p0, Landroid/content/om/FabricatedOverlay$Builder;->mTargetOverlayable:Ljava/lang/String;

    iget-object v5, p0, Landroid/content/om/FabricatedOverlay$Builder;->mEntries:Ljava/util/ArrayList;

    .line 327
    invoke-static {v1, v2, v3, v4, v5}, Landroid/content/om/FabricatedOverlay;->-$$Nest$smgenerateFabricatedOverlayInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Landroid/os/FabricatedOverlayInternal;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/om/FabricatedOverlay;-><init>(Landroid/os/FabricatedOverlayInternal;)V

    .line 326
    return-object v0
.end method

.method public blacklist setResourceValue(Ljava/lang/String;II)Landroid/content/om/FabricatedOverlay$Builder;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
        since = "Please use FabricatedOverlay#setResourceValue instead"
    .end annotation

    .line 189
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/content/om/FabricatedOverlay$Builder;->setResourceValue(Ljava/lang/String;IILjava/lang/String;)Landroid/content/om/FabricatedOverlay$Builder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setResourceValue(Ljava/lang/String;IILjava/lang/String;)Landroid/content/om/FabricatedOverlay$Builder;
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
        since = "Please use FabricatedOverlay#setResourceValue instead"
    .end annotation

    .line 215
    invoke-static {p1}, Landroid/content/om/FabricatedOverlay;->-$$Nest$smensureValidResourceName(Ljava/lang/String;)Ljava/lang/String;

    .line 216
    iget-object v0, p0, Landroid/content/om/FabricatedOverlay$Builder;->mEntries:Ljava/util/ArrayList;

    invoke-static {p1, p2, p3, p4}, Landroid/content/om/FabricatedOverlay;->-$$Nest$smgenerateFabricatedOverlayInternalEntry(Ljava/lang/String;IILjava/lang/String;)Landroid/os/FabricatedOverlayInternalEntry;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    return-object p0
.end method

.method public blacklist setResourceValue(Ljava/lang/String;ILjava/lang/String;)Landroid/content/om/FabricatedOverlay$Builder;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
        since = "Please use FabricatedOverlay#setResourceValue instead"
    .end annotation

    .line 240
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/content/om/FabricatedOverlay$Builder;->setResourceValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/content/om/FabricatedOverlay$Builder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setResourceValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/content/om/FabricatedOverlay$Builder;
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
        since = "Please use FabricatedOverlay#setResourceValue instead"
    .end annotation

    .line 264
    invoke-static {p1}, Landroid/content/om/FabricatedOverlay;->-$$Nest$smensureValidResourceName(Ljava/lang/String;)Ljava/lang/String;

    .line 265
    iget-object v0, p0, Landroid/content/om/FabricatedOverlay$Builder;->mEntries:Ljava/util/ArrayList;

    invoke-static {p1, p2, p3, p4}, Landroid/content/om/FabricatedOverlay;->-$$Nest$smgenerateFabricatedOverlayInternalEntry(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/os/FabricatedOverlayInternalEntry;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    return-object p0
.end method

.method public blacklist setResourceValue(Ljava/lang/String;Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)Landroid/content/om/FabricatedOverlay$Builder;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
        since = "Please use FabricatedOverlay#setResourceValue instead"
    .end annotation

    .line 312
    invoke-static {p1}, Landroid/content/om/FabricatedOverlay;->-$$Nest$smensureValidResourceName(Ljava/lang/String;)Ljava/lang/String;

    .line 313
    iget-object v0, p0, Landroid/content/om/FabricatedOverlay$Builder;->mEntries:Ljava/util/ArrayList;

    .line 314
    invoke-static {p1, p2, p3}, Landroid/content/om/FabricatedOverlay;->-$$Nest$smgenerateFabricatedOverlayInternalEntry(Ljava/lang/String;Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)Landroid/os/FabricatedOverlayInternalEntry;

    move-result-object p1

    .line 313
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    return-object p0
.end method

.method public blacklist setResourceValue(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Landroid/content/om/FabricatedOverlay$Builder;
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
        since = "Please use FabricatedOverlay#setResourceValue instead"
    .end annotation

    .line 288
    invoke-static {p1}, Landroid/content/om/FabricatedOverlay;->-$$Nest$smensureValidResourceName(Ljava/lang/String;)Ljava/lang/String;

    .line 289
    iget-object v0, p0, Landroid/content/om/FabricatedOverlay$Builder;->mEntries:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {p1, p2, p3, v1}, Landroid/content/om/FabricatedOverlay;->-$$Nest$smgenerateFabricatedOverlayInternalEntry(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Z)Landroid/os/FabricatedOverlayInternalEntry;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    return-object p0
.end method

.method public blacklist setTargetOverlayable(Ljava/lang/String;)Landroid/content/om/FabricatedOverlay$Builder;
    .registers 2

    .line 164
    invoke-static {p1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/content/om/FabricatedOverlay$Builder;->mTargetOverlayable:Ljava/lang/String;

    .line 165
    return-object p0
.end method
