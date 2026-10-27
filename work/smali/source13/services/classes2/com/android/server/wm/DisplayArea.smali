.class public Lcom/android/server/wm/DisplayArea;
.super Lcom/android/server/wm/WindowContainer;
.source "DisplayArea.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DisplayArea$Type;,
        Lcom/android/server/wm/DisplayArea$Dimmable;,
        Lcom/android/server/wm/DisplayArea$Tokens;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/server/wm/WindowContainer;",
        ">",
        "Lcom/android/server/wm/WindowContainer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final mFeatureId:I

.field private final mName:Ljava/lang/String;

.field mOrganizer:Landroid/window/IDisplayAreaOrganizer;

.field private final mOrganizerController:Lcom/android/server/wm/DisplayAreaOrganizerController;

.field protected mSetIgnoreOrientationRequest:Z

.field private final mTmpConfiguration:Landroid/content/res/Configuration;

.field protected final mType:Lcom/android/server/wm/DisplayArea$Type;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayArea$Type;Ljava/lang/String;)V
    .registers 5
    .param p1, "wms"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "type"    # Lcom/android/server/wm/DisplayArea$Type;
    .param p3, "name"    # Ljava/lang/String;

    .line 99
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/wm/DisplayArea;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayArea$Type;Ljava/lang/String;I)V

    .line 100
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayArea$Type;Ljava/lang/String;I)V
    .registers 6
    .param p1, "wms"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "type"    # Lcom/android/server/wm/DisplayArea$Type;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "featureId"    # I

    .line 103
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowContainer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    .line 86
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayArea;->mTmpConfiguration:Landroid/content/res/Configuration;

    .line 105
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/server/wm/DisplayArea;->mOrientation:I

    .line 106
    iput-object p2, p0, Lcom/android/server/wm/DisplayArea;->mType:Lcom/android/server/wm/DisplayArea$Type;

    .line 107
    iput-object p3, p0, Lcom/android/server/wm/DisplayArea;->mName:Ljava/lang/String;

    .line 108
    iput p4, p0, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    .line 109
    new-instance v0, Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowContainer$RemoteToken;-><init>(Lcom/android/server/wm/WindowContainer;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayArea;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    .line 110
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    iget-object v0, v0, Lcom/android/server/wm/WindowOrganizerController;->mDisplayAreaOrganizerController:Lcom/android/server/wm/DisplayAreaOrganizerController;

    iput-object v0, p0, Lcom/android/server/wm/DisplayArea;->mOrganizerController:Lcom/android/server/wm/DisplayAreaOrganizerController;

    .line 112
    return-void
.end method

.method private findMaxPositionForChildDisplayArea(Lcom/android/server/wm/DisplayArea;)I
    .registers 5
    .param p1, "child"    # Lcom/android/server/wm/DisplayArea;

    .line 259
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    invoke-static {p1}, Lcom/android/server/wm/DisplayArea$Type;->typeOf(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/DisplayArea$Type;

    move-result-object v0

    .line 260
    .local v0, "childType":Lcom/android/server/wm/DisplayArea$Type;
    iget-object v1, p0, Lcom/android/server/wm/DisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_c
    if-lez v1, :cond_1c

    .line 261
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayArea;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wm/DisplayArea$Type;->typeOf(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/DisplayArea$Type;

    move-result-object v2

    if-ne v2, v0, :cond_19

    .line 262
    return v1

    .line 260
    :cond_19
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 265
    .end local v1    # "i":I
    :cond_1c
    const/4 v1, 0x0

    return v1
.end method

.method private findMinPositionForChildDisplayArea(Lcom/android/server/wm/DisplayArea;)I
    .registers 5
    .param p1, "child"    # Lcom/android/server/wm/DisplayArea;

    .line 269
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    invoke-static {p1}, Lcom/android/server/wm/DisplayArea$Type;->typeOf(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/DisplayArea$Type;

    move-result-object v0

    .line 270
    .local v0, "childType":Lcom/android/server/wm/DisplayArea$Type;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    iget-object v2, p0, Lcom/android/server/wm/DisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1b

    .line 271
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayArea;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wm/DisplayArea$Type;->typeOf(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/DisplayArea$Type;

    move-result-object v2

    if-ne v2, v0, :cond_18

    .line 272
    return v1

    .line 270
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 275
    .end local v1    # "i":I
    :cond_1b
    iget-object v1, p0, Lcom/android/server/wm/DisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method private findPositionForChildDisplayArea(ILcom/android/server/wm/DisplayArea;)I
    .registers 6
    .param p1, "requestPosition"    # I
    .param p2, "child"    # Lcom/android/server/wm/DisplayArea;

    .line 244
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayArea;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-ne v0, p0, :cond_17

    .line 251
    invoke-direct {p0, p2}, Lcom/android/server/wm/DisplayArea;->findMaxPositionForChildDisplayArea(Lcom/android/server/wm/DisplayArea;)I

    move-result v0

    .line 253
    .local v0, "maxPosition":I
    invoke-direct {p0, p2}, Lcom/android/server/wm/DisplayArea;->findMinPositionForChildDisplayArea(Lcom/android/server/wm/DisplayArea;)I

    move-result v1

    .line 255
    .local v1, "minPosition":I
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    return v2

    .line 245
    .end local v0    # "maxPosition":I
    .end local v1    # "minPosition":I
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "positionChildAt: container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayArea;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a child of container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 246
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " current parent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 247
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayArea;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method final asDisplayArea()Lcom/android/server/wm/DisplayArea;
    .registers 1

    .line 350
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    return-object p0
.end method

.method asTokens()Lcom/android/server/wm/DisplayArea$Tokens;
    .registers 2

    .line 355
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic commitPendingTransaction()V
    .registers 1

    .line 79
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->commitPendingTransaction()V

    return-void
.end method

.method public bridge synthetic compareTo(Lcom/android/server/wm/WindowContainer;)I
    .registers 2

    .line 79
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result p1

    return p1
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    .line 317
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 318
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayArea;->mSetIgnoreOrientationRequest:Z

    if-eqz v0, :cond_1e

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mSetIgnoreOrientationRequest=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 321
    :cond_1e
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->hasRequestedOverrideConfiguration()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "overrideConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 324
    :cond_43
    return-void
.end method

.method dumpChildDisplayArea(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    .line 327
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 328
    .local v0, "doublePrefix":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_19
    if-ltz v1, :cond_54

    .line 329
    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayArea;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v2

    .line 330
    .local v2, "childArea":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<*>;"
    if-nez v2, :cond_26

    .line 331
    goto :goto_51

    .line 333
    :cond_26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "* "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayArea;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 334
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayArea;->isTaskDisplayArea()Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 336
    goto :goto_51

    .line 338
    :cond_4b
    invoke-virtual {v2, p1, v0, p3}, Lcom/android/server/wm/DisplayArea;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 339
    invoke-virtual {v2, p1, v0, p3}, Lcom/android/server/wm/DisplayArea;->dumpChildDisplayArea(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 328
    .end local v2    # "childArea":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<*>;"
    :goto_51
    add-int/lit8 v1, v1, -0x1

    goto :goto_19

    .line 341
    .end local v1    # "i":I
    :cond_54
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V
    .registers 10
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "logLevel"    # I

    .line 301
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    const/4 v0, 0x2

    if-ne p4, v0, :cond_a

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->isVisible()Z

    move-result v0

    if-nez v0, :cond_a

    .line 302
    return-void

    .line 305
    :cond_a
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 306
    .local v0, "token":J
    const-wide v2, 0x10b00000001L

    invoke-super {p0, p1, v2, v3, p4}, Lcom/android/server/wm/WindowContainer;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 307
    const-wide v2, 0x10900000002L

    iget-object v4, p0, Lcom/android/server/wm/DisplayArea;->mName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 308
    const-wide v2, 0x10800000004L

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->isTaskDisplayArea()Z

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 309
    const-wide v2, 0x10800000005L

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->asRootDisplayArea()Lcom/android/server/wm/RootDisplayArea;

    move-result-object v4

    if-eqz v4, :cond_39

    const/4 v4, 0x1

    goto :goto_3a

    :cond_39
    const/4 v4, 0x0

    :goto_3a
    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 310
    const-wide v2, 0x10500000006L

    iget v4, p0, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 311
    const-wide v2, 0x10800000007L

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->isOrganized()Z

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 312
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 313
    return-void
.end method

.method fillsParent()Z
    .registers 2

    .line 286
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method forAllDisplayAreas(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/DisplayArea;",
            ">;)V"
        }
    .end annotation

    .line 360
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/DisplayArea;>;"
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->forAllDisplayAreas(Ljava/util/function/Consumer;)V

    .line 361
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 362
    return-void
.end method

.method forAllTaskDisplayAreas(Ljava/util/function/Consumer;Z)V
    .registers 7
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/TaskDisplayArea;",
            ">;Z)V"
        }
    .end annotation

    .line 389
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/TaskDisplayArea;>;"
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mType:Lcom/android/server/wm/DisplayArea$Type;

    sget-object v1, Lcom/android/server/wm/DisplayArea$Type;->ANY:Lcom/android/server/wm/DisplayArea$Type;

    if-eq v0, v1, :cond_7

    .line 390
    return-void

    .line 393
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 394
    .local v0, "childCount":I
    if-eqz p2, :cond_12

    add-int/lit8 v1, v0, -0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    .line 395
    .local v1, "i":I
    :goto_13
    if-ltz v1, :cond_33

    if-ge v1, v0, :cond_33

    .line 396
    iget-object v2, p0, Lcom/android/server/wm/DisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 398
    .local v2, "child":Lcom/android/server/wm/WindowContainer;, "TT;"
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 399
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/DisplayArea;->forAllTaskDisplayAreas(Ljava/util/function/Consumer;Z)V

    .line 401
    :cond_2c
    if-eqz p2, :cond_30

    const/4 v3, -0x1

    goto :goto_31

    :cond_30
    const/4 v3, 0x1

    :goto_31
    add-int/2addr v1, v3

    .line 402
    .end local v2    # "child":Lcom/android/server/wm/WindowContainer;, "TT;"
    goto :goto_13

    .line 403
    :cond_33
    return-void
.end method

.method forAllTaskDisplayAreas(Ljava/util/function/Predicate;Z)Z
    .registers 9
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/TaskDisplayArea;",
            ">;Z)Z"
        }
    .end annotation

    .line 368
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    .local p1, "callback":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/TaskDisplayArea;>;"
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mType:Lcom/android/server/wm/DisplayArea$Type;

    sget-object v1, Lcom/android/server/wm/DisplayArea$Type;->ANY:Lcom/android/server/wm/DisplayArea$Type;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_8

    .line 369
    return v2

    .line 372
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 373
    .local v0, "childCount":I
    if-eqz p2, :cond_13

    add-int/lit8 v1, v0, -0x1

    goto :goto_14

    :cond_13
    move v1, v2

    .line 374
    .local v1, "i":I
    :goto_14
    if-ltz v1, :cond_37

    if-ge v1, v0, :cond_37

    .line 375
    iget-object v3, p0, Lcom/android/server/wm/DisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 377
    .local v3, "child":Lcom/android/server/wm/WindowContainer;, "TT;"
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_32

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v4

    .line 378
    invoke-virtual {v4, p1, p2}, Lcom/android/server/wm/DisplayArea;->forAllTaskDisplayAreas(Ljava/util/function/Predicate;Z)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 379
    return v5

    .line 381
    :cond_32
    if-eqz p2, :cond_35

    const/4 v5, -0x1

    :cond_35
    add-int/2addr v1, v5

    .line 382
    .end local v3    # "child":Lcom/android/server/wm/WindowContainer;, "TT;"
    goto :goto_14

    .line 383
    :cond_37
    return v2
.end method

.method public bridge synthetic getAnimationLeash()Landroid/view/SurfaceControl;
    .registers 2

    .line 79
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getAnimationLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAnimationLeashParent()Landroid/view/SurfaceControl;
    .registers 2

    .line 79
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getAnimationLeashParent()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method getDisplayArea()Lcom/android/server/wm/DisplayArea;
    .registers 1

    .line 571
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    return-object p0
.end method

.method getDisplayAreaInfo()Landroid/window/DisplayAreaInfo;
    .registers 5

    .line 531
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    new-instance v0, Landroid/window/DisplayAreaInfo;

    iget-object v1, p0, Lcom/android/server/wm/DisplayArea;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v1

    .line 532
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    iget v3, p0, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    invoke-direct {v0, v1, v2, v3}, Landroid/window/DisplayAreaInfo;-><init>(Landroid/window/WindowContainerToken;II)V

    .line 533
    .local v0, "info":Landroid/window/DisplayAreaInfo;
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getRootDisplayArea()Lcom/android/server/wm/RootDisplayArea;

    move-result-object v1

    .line 534
    .local v1, "root":Lcom/android/server/wm/RootDisplayArea;
    if-nez v1, :cond_22

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mFeatureId:I

    goto :goto_24

    :cond_22
    iget v2, v1, Lcom/android/server/wm/RootDisplayArea;->mFeatureId:I

    :goto_24
    iput v2, v0, Landroid/window/DisplayAreaInfo;->rootDisplayAreaId:I

    .line 535
    iget-object v2, v0, Landroid/window/DisplayAreaInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 536
    return-object v0
.end method

.method public bridge synthetic getDisplayContent()Lcom/android/server/wm/DisplayContent;
    .registers 2

    .line 79
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFreezeSnapshotTarget()Landroid/view/SurfaceControl;
    .registers 2

    .line 79
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getFreezeSnapshotTarget()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method getIgnoreOrientationRequest()Z
    .registers 2

    .line 230
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayArea;->mSetIgnoreOrientationRequest:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isIgnoreOrientationRequestDisabled()Z

    move-result v0

    if-nez v0, :cond_20

    .line 231
    invoke-static {}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->get()Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->isMiuiIgnoreOrientationRequestDisabled()Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 232
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getCastRotationMode()Z

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    .line 230
    :goto_21
    return v0
.end method

.method getItemFromDisplayAreas(Ljava/util/function/Function;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "Lcom/android/server/wm/DisplayArea;",
            "TR;>;)TR;"
        }
    .end annotation

    .line 432
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    .local p1, "callback":Ljava/util/function/Function;, "Ljava/util/function/Function<Lcom/android/server/wm/DisplayArea;TR;>;"
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->getItemFromDisplayAreas(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    .line 433
    .local v0, "item":Ljava/lang/Object;, "TR;"
    if-eqz v0, :cond_8

    move-object v1, v0

    goto :goto_c

    :cond_8
    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_c
    return-object v1
.end method

.method getItemFromTaskDisplayAreas(Ljava/util/function/Function;Z)Ljava/lang/Object;
    .registers 8
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "Lcom/android/server/wm/TaskDisplayArea;",
            "TR;>;Z)TR;"
        }
    .end annotation

    .line 441
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    .local p1, "callback":Ljava/util/function/Function;, "Ljava/util/function/Function<Lcom/android/server/wm/TaskDisplayArea;TR;>;"
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mType:Lcom/android/server/wm/DisplayArea$Type;

    sget-object v1, Lcom/android/server/wm/DisplayArea$Type;->ANY:Lcom/android/server/wm/DisplayArea$Type;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_8

    .line 442
    return-object v2

    .line 445
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 446
    .local v0, "childCount":I
    if-eqz p2, :cond_13

    add-int/lit8 v1, v0, -0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    .line 447
    .local v1, "i":I
    :goto_14
    if-ltz v1, :cond_3a

    if-ge v1, v0, :cond_3a

    .line 448
    iget-object v3, p0, Lcom/android/server/wm/DisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 452
    .local v3, "child":Lcom/android/server/wm/WindowContainer;, "TT;"
    if-eqz v3, :cond_33

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v4

    if-eqz v4, :cond_33

    .line 454
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v4

    .line 455
    invoke-virtual {v4, p1, p2}, Lcom/android/server/wm/DisplayArea;->getItemFromTaskDisplayAreas(Ljava/util/function/Function;Z)Ljava/lang/Object;

    move-result-object v4

    .line 456
    .local v4, "result":Ljava/lang/Object;, "TR;"
    if-eqz v4, :cond_33

    .line 457
    return-object v4

    .line 460
    .end local v4    # "result":Ljava/lang/Object;, "TR;"
    :cond_33
    if-eqz p2, :cond_37

    const/4 v4, -0x1

    goto :goto_38

    :cond_37
    const/4 v4, 0x1

    :goto_38
    add-int/2addr v1, v4

    .line 461
    .end local v3    # "child":Lcom/android/server/wm/WindowContainer;, "TT;"
    goto :goto_14

    .line 462
    :cond_3a
    return-object v2
.end method

.method public bridge synthetic getMiuiConfigFlag()I
    .registers 2

    .line 79
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getMiuiConfigFlag()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMiuiProjection()Z
    .registers 2

    .line 79
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getMiuiProjection()Z

    move-result v0

    return v0
.end method

.method getName()Ljava/lang/String;
    .registers 2

    .line 291
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mName:Ljava/lang/String;

    return-object v0
.end method

.method getOrientation(I)I
    .registers 3
    .param p1, "candidate"    # I

    .line 158
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayArea;->mLastOrientationSource:Lcom/android/server/wm/WindowContainer;

    .line 159
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getIgnoreOrientationRequest()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 160
    const/4 v0, -0x2

    return v0

    .line 163
    :cond_b
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->getOrientation(I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getParentSurfaceControl()Landroid/view/SurfaceControl;
    .registers 2

    .line 79
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPendingTransaction()Landroid/view/SurfaceControl$Transaction;
    .registers 2

    .line 79
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method getProtoFieldId()J
    .registers 3

    .line 345
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    const-wide v0, 0x10b00000004L

    return-wide v0
.end method

.method public bridge synthetic getProvidedInsetsSources()Landroid/util/SparseArray;
    .registers 2

    .line 79
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getProvidedInsetsSources()Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method getStableRect(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "out"    # Landroid/graphics/Rect;

    .line 544
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v0, :cond_8

    .line 545
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayArea;->getBounds(Landroid/graphics/Rect;)V

    .line 546
    return-void

    .line 550
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent;->getStableRect(Landroid/graphics/Rect;)V

    .line 551
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 552
    return-void
.end method

.method public bridge synthetic getSurfaceControl()Landroid/view/SurfaceControl;
    .registers 2

    .line 79
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSurfaceHeight()I
    .registers 2

    .line 79
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSurfaceWidth()I
    .registers 2

    .line 79
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSyncTransaction()Landroid/view/SurfaceControl$Transaction;
    .registers 2

    .line 79
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method handlesOrientationChangeFromDescendant()Z
    .registers 2

    .line 168
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getIgnoreOrientationRequest()Z

    move-result v0

    if-nez v0, :cond_e

    .line 169
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->handlesOrientationChangeFromDescendant()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 168
    :goto_f
    return v0
.end method

.method isOrganized()Z
    .registers 2

    .line 526
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mOrganizer:Landroid/window/IDisplayAreaOrganizer;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method isTaskDisplayArea()Z
    .registers 2

    .line 560
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic makeAnimationLeash()Landroid/view/SurfaceControl$Builder;
    .registers 2

    .line 79
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method needsZBoost()Z
    .registers 2

    .line 281
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 3

    .line 79
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    return-void
.end method

.method public bridge synthetic onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    .line 79
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method onChildPositionChanged(Lcom/android/server/wm/WindowContainer;)V
    .registers 7
    .param p1, "child"    # Lcom/android/server/wm/WindowContainer;

    .line 116
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onChildPositionChanged(Lcom/android/server/wm/WindowContainer;)V

    .line 119
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mType:Lcom/android/server/wm/DisplayArea$Type;

    invoke-static {p1}, Lcom/android/server/wm/DisplayArea$Type;->typeOf(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/DisplayArea$Type;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wm/DisplayArea$Type;->checkChild(Lcom/android/server/wm/DisplayArea$Type;Lcom/android/server/wm/DisplayArea$Type;)V

    .line 121
    instance-of v0, p1, Lcom/android/server/wm/Task;

    if-eqz v0, :cond_11

    .line 124
    return-void

    .line 127
    :cond_11
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_12
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_34

    .line 128
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayArea;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    .line 129
    .local v1, "top":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayArea;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    .line 130
    .local v2, "bottom":Lcom/android/server/wm/WindowContainer;
    if-eq p1, v1, :cond_26

    if-ne p1, v2, :cond_31

    .line 131
    :cond_26
    invoke-static {v1}, Lcom/android/server/wm/DisplayArea$Type;->typeOf(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/DisplayArea$Type;

    move-result-object v3

    invoke-static {v2}, Lcom/android/server/wm/DisplayArea$Type;->typeOf(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/DisplayArea$Type;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/wm/DisplayArea$Type;->checkSiblings(Lcom/android/server/wm/DisplayArea$Type;Lcom/android/server/wm/DisplayArea$Type;)V

    .line 127
    .end local v1    # "top":Lcom/android/server/wm/WindowContainer;
    .end local v2    # "bottom":Lcom/android/server/wm/WindowContainer;
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 134
    .end local v0    # "i":I
    :cond_34
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "newParentConfig"    # Landroid/content/res/Configuration;

    .line 499
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mTmpConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 500
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 502
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mOrganizer:Landroid/window/IDisplayAreaOrganizer;

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayArea;->mTmpConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    if-eqz v0, :cond_23

    .line 503
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mOrganizerController:Lcom/android/server/wm/DisplayAreaOrganizerController;

    iget-object v1, p0, Lcom/android/server/wm/DisplayArea;->mOrganizer:Landroid/window/IDisplayAreaOrganizer;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/DisplayAreaOrganizerController;->onDisplayAreaInfoChanged(Landroid/window/IDisplayAreaOrganizer;Lcom/android/server/wm/DisplayArea;)V

    .line 505
    :cond_23
    return-void
.end method

.method onDescendantOrientationChanged(Lcom/android/server/wm/WindowContainer;)Z
    .registers 3
    .param p1, "requestingContainer"    # Lcom/android/server/wm/WindowContainer;

    .line 176
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getIgnoreOrientationRequest()Z

    move-result v0

    if-nez v0, :cond_e

    .line 177
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onDescendantOrientationChanged(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 176
    :goto_f
    return v0
.end method

.method public bridge synthetic onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 79
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public bridge synthetic onUnfrozen()V
    .registers 1

    .line 79
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->onUnfrozen()V

    return-void
.end method

.method positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V
    .registers 7
    .param p1, "position"    # I
    .param p3, "includingParents"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;Z)V"
        }
    .end annotation

    .line 138
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    .local p2, "child":Lcom/android/server/wm/WindowContainer;, "TT;"
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v0

    if-nez v0, :cond_a

    .line 140
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 141
    return-void

    .line 144
    :cond_a
    invoke-static {}, Lcom/android/server/wm/PreloadStateManagerStub;->get()Lcom/android/server/wm/PreloadStateManagerStub;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/wm/PreloadStateManagerStub;->repositionDisplayContent(ILjava/lang/Object;)I

    move-result p1

    .line 146
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/DisplayArea;->findPositionForChildDisplayArea(ILcom/android/server/wm/DisplayArea;)I

    move-result v0

    .line 147
    .local v0, "targetPosition":I
    const/4 v1, 0x0

    invoke-super {p0, v0, p2, v1}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 149
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    .line 150
    .local v1, "parent":Lcom/android/server/wm/WindowContainer;
    if-eqz p3, :cond_33

    if-eqz v1, :cond_33

    const v2, 0x7fffffff

    if-eq p1, v2, :cond_2f

    const/high16 v2, -0x80000000

    if-ne p1, v2, :cond_33

    .line 152
    :cond_2f
    const/4 v2, 0x1

    invoke-virtual {v1, p1, p0, v2}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 154
    :cond_33
    return-void
.end method

.method public providesMaxBounds()Z
    .registers 2

    .line 556
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method reduceOnAllTaskDisplayAreas(Ljava/util/function/BiFunction;Ljava/lang/Object;Z)Ljava/lang/Object;
    .registers 9
    .param p3, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiFunction<",
            "Lcom/android/server/wm/TaskDisplayArea;",
            "TR;TR;>;TR;Z)TR;"
        }
    .end annotation

    .line 410
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    .local p1, "accumulator":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Lcom/android/server/wm/TaskDisplayArea;TR;TR;>;"
    .local p2, "initValue":Ljava/lang/Object;, "TR;"
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mType:Lcom/android/server/wm/DisplayArea$Type;

    sget-object v1, Lcom/android/server/wm/DisplayArea$Type;->ANY:Lcom/android/server/wm/DisplayArea$Type;

    if-eq v0, v1, :cond_7

    .line 411
    return-object p2

    .line 414
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 415
    .local v0, "childCount":I
    if-eqz p3, :cond_12

    add-int/lit8 v1, v0, -0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    .line 416
    .local v1, "i":I
    :goto_13
    move-object v2, p2

    .line 417
    .local v2, "result":Ljava/lang/Object;, "TR;"
    :goto_14
    if-ltz v1, :cond_35

    if-ge v1, v0, :cond_35

    .line 418
    iget-object v3, p0, Lcom/android/server/wm/DisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 420
    .local v3, "child":Lcom/android/server/wm/WindowContainer;, "TT;"
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v4

    if-eqz v4, :cond_2e

    .line 421
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v4

    .line 422
    invoke-virtual {v4, p1, v2, p3}, Lcom/android/server/wm/DisplayArea;->reduceOnAllTaskDisplayAreas(Ljava/util/function/BiFunction;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v2

    .line 424
    :cond_2e
    if-eqz p3, :cond_32

    const/4 v4, -0x1

    goto :goto_33

    :cond_32
    const/4 v4, 0x1

    :goto_33
    add-int/2addr v1, v4

    .line 425
    .end local v3    # "child":Lcom/android/server/wm/WindowContainer;, "TT;"
    goto :goto_14

    .line 426
    :cond_35
    return-object v2
.end method

.method removeImmediately()V
    .registers 2

    .line 565
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayArea;->setOrganizer(Landroid/window/IDisplayAreaOrganizer;)V

    .line 566
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->removeImmediately()V

    .line 567
    return-void
.end method

.method resolveOverrideConfiguration(Landroid/content/res/Configuration;)V
    .registers 8
    .param p1, "newParentConfiguration"    # Landroid/content/res/Configuration;

    .line 509
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->resolveOverrideConfiguration(Landroid/content/res/Configuration;)V

    .line 510
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 511
    .local v0, "resolvedConfig":Landroid/content/res/Configuration;
    iget-object v1, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 512
    .local v1, "overrideBounds":Landroid/graphics/Rect;
    iget-object v2, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 513
    .local v2, "overrideAppBounds":Landroid/graphics/Rect;
    iget-object v3, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 516
    .local v3, "parentAppBounds":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3c

    if-eqz v2, :cond_27

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3c

    :cond_27
    if-eqz v3, :cond_3c

    .line 517
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3c

    .line 518
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 519
    .local v4, "appBounds":Landroid/graphics/Rect;
    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 520
    iget-object v5, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v5, v4}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    .line 522
    .end local v4    # "appBounds":Landroid/graphics/Rect;
    :cond_3c
    return-void
.end method

.method sendDisplayAreaAppeared()V
    .registers 3

    .line 487
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mOrganizer:Landroid/window/IDisplayAreaOrganizer;

    if-nez v0, :cond_5

    return-void

    .line 488
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/DisplayArea;->mOrganizerController:Lcom/android/server/wm/DisplayAreaOrganizerController;

    invoke-virtual {v1, v0, p0}, Lcom/android/server/wm/DisplayAreaOrganizerController;->onDisplayAreaAppeared(Landroid/window/IDisplayAreaOrganizer;Lcom/android/server/wm/DisplayArea;)V

    .line 489
    return-void
.end method

.method sendDisplayAreaVanished(Landroid/window/IDisplayAreaOrganizer;)V
    .registers 3
    .param p1, "organizer"    # Landroid/window/IDisplayAreaOrganizer;

    .line 492
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    if-nez p1, :cond_3

    return-void

    .line 493
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayArea;->migrateToNewSurfaceControl(Landroid/view/SurfaceControl$Transaction;)V

    .line 494
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mOrganizerController:Lcom/android/server/wm/DisplayAreaOrganizerController;

    invoke-virtual {v0, p1, p0}, Lcom/android/server/wm/DisplayAreaOrganizerController;->onDisplayAreaVanished(Landroid/window/IDisplayAreaOrganizer;Lcom/android/server/wm/DisplayArea;)V

    .line 495
    return-void
.end method

.method setIgnoreOrientationRequest(Z)Z
    .registers 6
    .param p1, "ignoreOrientationRequest"    # Z

    .line 187
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayArea;->mSetIgnoreOrientationRequest:Z

    const/4 v1, 0x0

    if-ne v0, p1, :cond_6

    .line 188
    return v1

    .line 190
    :cond_6
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayArea;->mSetIgnoreOrientationRequest:Z

    .line 193
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v0, :cond_d

    .line 194
    return v1

    .line 197
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_20

    .line 200
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, p0, Lcom/android/server/wm/DisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    .line 201
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    .line 200
    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayContent;->onLastFocusedTaskDisplayAreaChanged(Lcom/android/server/wm/TaskDisplayArea;)V

    .line 205
    :cond_20
    if-nez p1, :cond_29

    .line 206
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->updateOrientation()Z

    move-result v0

    return v0

    .line 209
    :cond_29
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getLastOrientation()I

    move-result v0

    .line 210
    .local v0, "lastOrientation":I
    iget-object v2, p0, Lcom/android/server/wm/DisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getLastOrientationSource()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    .line 211
    .local v2, "lastOrientationSource":Lcom/android/server/wm/WindowContainer;
    const/4 v3, -0x2

    if-eq v0, v3, :cond_4d

    const/4 v3, -0x1

    if-ne v0, v3, :cond_3c

    goto :goto_4d

    .line 216
    :cond_3c
    if-eqz v2, :cond_46

    invoke-virtual {v2, p0}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v3

    if-eqz v3, :cond_45

    goto :goto_46

    .line 220
    :cond_45
    return v1

    .line 218
    :cond_46
    :goto_46
    iget-object v1, p0, Lcom/android/server/wm/DisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->updateOrientation()Z

    move-result v1

    return v1

    .line 214
    :cond_4d
    :goto_4d
    return v1
.end method

.method public bridge synthetic setMiuiProjection(Z)V
    .registers 2

    .line 79
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->setMiuiProjection(Z)V

    return-void
.end method

.method setOrganizer(Landroid/window/IDisplayAreaOrganizer;)V
    .registers 3
    .param p1, "organizer"    # Landroid/window/IDisplayAreaOrganizer;

    .line 466
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayArea;->setOrganizer(Landroid/window/IDisplayAreaOrganizer;Z)V

    .line 467
    return-void
.end method

.method setOrganizer(Landroid/window/IDisplayAreaOrganizer;Z)V
    .registers 5
    .param p1, "organizer"    # Landroid/window/IDisplayAreaOrganizer;
    .param p2, "skipDisplayAreaAppeared"    # Z

    .line 470
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mOrganizer:Landroid/window/IDisplayAreaOrganizer;

    if-ne v0, p1, :cond_5

    return-void

    .line 471
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isTrusted()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 475
    iget-object v0, p0, Lcom/android/server/wm/DisplayArea;->mOrganizer:Landroid/window/IDisplayAreaOrganizer;

    .line 479
    .local v0, "lastOrganizer":Landroid/window/IDisplayAreaOrganizer;
    iput-object p1, p0, Lcom/android/server/wm/DisplayArea;->mOrganizer:Landroid/window/IDisplayAreaOrganizer;

    .line 480
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayArea;->sendDisplayAreaVanished(Landroid/window/IDisplayAreaOrganizer;)V

    .line 481
    if-nez p2, :cond_1d

    .line 482
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->sendDisplayAreaAppeared()V

    .line 484
    :cond_1d
    return-void

    .line 472
    .end local v0    # "lastOrganizer":Landroid/window/IDisplayAreaOrganizer;
    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Don\'t organize or trigger events for unavailable or untrusted display."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 296
    .local p0, "this":Lcom/android/server/wm/DisplayArea;, "Lcom/android/server/wm/DisplayArea<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/DisplayArea;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
