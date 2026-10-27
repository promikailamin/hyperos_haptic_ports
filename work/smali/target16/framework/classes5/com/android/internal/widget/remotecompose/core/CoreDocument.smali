.class public Lcom/android/internal/widget/remotecompose/core/CoreDocument;
.super Ljava/lang/Object;
.source "CoreDocument.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;,
        Lcom/android/internal/widget/remotecompose/core/CoreDocument$Visitor;,
        Lcom/android/internal/widget/remotecompose/core/CoreDocument$HapticEngine;,
        Lcom/android/internal/widget/remotecompose/core/CoreDocument$ActionCallback;,
        Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;,
        Lcom/android/internal/widget/remotecompose/core/CoreDocument$IdActionCallback;,
        Lcom/android/internal/widget/remotecompose/core/CoreDocument$DocInfo;,
        Lcom/android/internal/widget/remotecompose/core/CoreDocument$ShaderControl;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field static final blacklist BUILD:F = 0.1f

.field private static final blacklist DEBUG:Z = false

.field public static final blacklist DOCUMENT_API_LEVEL:I = 0x8

.field public static final blacklist MAJOR_VERSION:I = 0x1

.field public static final blacklist MINOR_VERSION:I = 0x2

.field public static final blacklist PATCH_VERSION:I = 0x0

.field private static final blacklist UPDATE_VARIABLES_BEFORE_LAYOUT:Z = false


# instance fields
.field blacklist mActionListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/internal/widget/remotecompose/core/CoreDocument$ActionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mAppliedTouchOperations:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mBitmapMemory:I

.field blacklist mBuffer:Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;

.field blacklist mClickAreas:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mClock:Ljava/time/Clock;

.field private final blacklist mComponentMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mContentAlignment:I

.field blacklist mContentDescription:Ljava/lang/String;

.field blacklist mContentMode:I

.field blacklist mContentScroll:I

.field blacklist mContentSizing:I

.field private blacklist mDocProperties:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mFirstPaint:Z

.field private final blacklist mFloatExpressions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mHapticEngine:Lcom/android/internal/widget/remotecompose/core/CoreDocument$HapticEngine;

.field blacklist mHeight:I

.field private blacklist mHostExceptionID:I

.field blacklist mIdActionListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/internal/widget/remotecompose/core/CoreDocument$IdActionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIntegerExpressions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIsUpdateDoc:Z

.field private blacklist mLastId:I

.field private blacklist mLastOpCount:I

.field blacklist mOperations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

.field private blacklist mRepaintNext:I

.field blacklist mRequiredCapabilities:J

.field blacklist mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

.field private final blacklist mScaleOutput:[F

.field public blacklist mTimeVariables:Lcom/android/internal/widget/remotecompose/core/TimeVariables;

.field blacklist mTouchListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/internal/widget/remotecompose/core/TouchListener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTranslateOutput:[F

.field blacklist mVersion:Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;

.field blacklist mWidth:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 64
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 132
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/SystemClock;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/SystemClock;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;-><init>(Ljava/time/Clock;)V

    .line 133
    return-void
.end method

.method public constructor blacklist <init>(Ljava/time/Clock;)V
    .registers 8

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    .line 88
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    .line 90
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/TimeVariables;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/TimeVariables;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mTimeVariables:Lcom/android/internal/widget/remotecompose/core/TimeVariables;

    .line 95
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;-><init>(III)V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mVersion:Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;

    .line 101
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRequiredCapabilities:J

    .line 102
    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mWidth:I

    .line 103
    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mHeight:I

    .line 105
    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentScroll:I

    .line 106
    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentSizing:I

    .line 107
    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentMode:I

    .line 109
    const/16 v0, 0x22

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentAlignment:I

    .line 111
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mBuffer:Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mIntegerExpressions:Ljava/util/HashMap;

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mFloatExpressions:Ljava/util/HashMap;

    .line 120
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mAppliedTouchOperations:Ljava/util/HashSet;

    .line 122
    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mLastId:I

    .line 126
    iput-boolean v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mFirstPaint:Z

    .line 127
    iput-boolean v3, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mIsUpdateDoc:Z

    .line 128
    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mHostExceptionID:I

    .line 129
    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mBitmapMemory:I

    .line 667
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mActionListeners:Ljava/util/HashSet;

    .line 712
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mIdActionListeners:Ljava/util/HashSet;

    .line 714
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mTouchListeners:Ljava/util/HashSet;

    .line 716
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mClickAreas:Ljava/util/HashSet;

    .line 965
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mComponentMap:Ljava/util/HashMap;

    .line 1379
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mScaleOutput:[F

    .line 1380
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mTranslateOutput:[F

    .line 1381
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRepaintNext:I

    .line 136
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mClock:Ljava/time/Clock;

    .line 137
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/TimeVariables;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/remotecompose/core/TimeVariables;-><init>(Ljava/time/Clock;)V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mTimeVariables:Lcom/android/internal/widget/remotecompose/core/TimeVariables;

    .line 138
    return-void
.end method

.method private blacklist addChildren(Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;Ljava/util/HashMap;Lcom/android/internal/widget/remotecompose/core/WireBuffer;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[I>;",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            ")I"
        }
    .end annotation

    .line 1693
    invoke-interface {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1694
    invoke-interface {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;->getList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 1695
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 1697
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 1698
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    goto :goto_40

    .line 1700
    :cond_35
    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 1701
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v3

    .line 1703
    :goto_40
    const/4 v3, 0x0

    aget v4, v2, v3

    const/4 v5, 0x1

    add-int/2addr v4, v5

    aput v4, v2, v3

    .line 1704
    aget v3, v2, v5

    invoke-direct {p0, v1, p3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->sizeOfComponent(Lcom/android/internal/widget/remotecompose/core/Operation;Lcom/android/internal/widget/remotecompose/core/WireBuffer;)I

    move-result v4

    add-int/2addr v3, v4

    aput v3, v2, v5

    .line 1705
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    if-eqz v2, :cond_5b

    .line 1706
    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    invoke-direct {p0, v1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->addChildren(Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;Ljava/util/HashMap;Lcom/android/internal/widget/remotecompose/core/WireBuffer;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1708
    :cond_5b
    goto :goto_10

    .line 1709
    :cond_5c
    return v0
.end method

.method private blacklist applyOperations(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/RemoteContext;",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    .line 1014
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 1015
    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    if-eqz v1, :cond_1a

    .line 1016
    move-object v1, v0

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    invoke-interface {v1, p1}, Lcom/android/internal/widget/remotecompose/core/VariableSupport;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 1018
    :cond_1a
    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v1, :cond_24

    .line 1019
    move-object v1, v0

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 1021
    :cond_24
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/Operation;->markNotDirty()V

    .line 1022
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/Operation;->apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 1023
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->incrementOpCount()V

    .line 1024
    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    if-eqz v1, :cond_3a

    .line 1025
    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    invoke-interface {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->applyOperations(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Ljava/util/ArrayList;)V

    .line 1027
    :cond_3a
    goto :goto_4

    .line 1028
    :cond_3b
    return-void
.end method

.method private blacklist checkShaders(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument$ShaderControl;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/RemoteContext;",
            "Lcom/android/internal/widget/remotecompose/core/CoreDocument$ShaderControl;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    .line 1782
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 1783
    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/TextData;

    if-eqz v1, :cond_17

    .line 1784
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/Operation;->apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 1786
    :cond_17
    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    if-eqz v1, :cond_25

    .line 1787
    move-object v1, v0

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    invoke-interface {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;->getList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->checkShaders(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument$ShaderControl;Ljava/util/List;)V

    .line 1789
    :cond_25
    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;

    if-eqz v1, :cond_3c

    .line 1790
    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;

    .line 1791
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->getShaderTextId()I

    move-result v1

    .line 1792
    invoke-virtual {p1, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getText(I)Ljava/lang/String;

    move-result-object v1

    .line 1793
    if-eqz v1, :cond_3c

    .line 1794
    invoke-interface {p2, v1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ShaderControl;->isShaderValid(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;->enable(Z)V

    .line 1797
    :cond_3c
    goto :goto_4

    .line 1798
    :cond_3d
    return-void
.end method

.method private blacklist computeTranslate(FFFF[F)V
    .registers 10

    .line 330
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentAlignment:I

    and-int/lit16 v0, v0, 0xf0

    .line 331
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentAlignment:I

    and-int/lit8 v1, v1, 0xf

    .line 332
    nop

    .line 333
    nop

    .line 334
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, p3

    .line 335
    iget p3, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mHeight:I

    int-to-float p3, p3

    mul-float/2addr p3, p4

    .line 337
    const/high16 p4, 0x40000000    # 2.0f

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_34

    goto :goto_1f

    .line 345
    :sswitch_19
    sub-float/2addr p1, v2

    .line 346
    goto :goto_20

    .line 342
    :sswitch_1b
    sub-float/2addr p1, v2

    div-float/2addr p1, p4

    .line 343
    goto :goto_20

    .line 340
    :sswitch_1e
    nop

    .line 350
    :goto_1f
    move p1, v3

    :goto_20
    packed-switch v1, :pswitch_data_42

    :pswitch_23
    goto :goto_2c

    .line 358
    :pswitch_24
    sub-float v3, p2, p3

    .line 359
    goto :goto_2c

    .line 355
    :pswitch_27
    sub-float/2addr p2, p3

    div-float v3, p2, p4

    .line 356
    goto :goto_2c

    .line 353
    :pswitch_2b
    nop

    .line 364
    :goto_2c
    const/4 p2, 0x0

    aput p1, p5, p2

    .line 365
    const/4 p1, 0x1

    aput v3, p5, p1

    .line 366
    return-void

    nop

    :sswitch_data_34
    .sparse-switch
        0x10 -> :sswitch_1e
        0x20 -> :sswitch_1b
        0x40 -> :sswitch_19
    .end sparse-switch

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_27
        :pswitch_23
        :pswitch_24
    .end packed-switch
.end method

.method private blacklist getBitmapDataSet(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;",
            ">;)V"
        }
    .end annotation

    .line 1608
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 1609
    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;

    if-eqz v1, :cond_1a

    .line 1610
    move-object v1, v0

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1612
    :cond_1a
    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    if-eqz v1, :cond_27

    .line 1613
    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    invoke-interface {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getBitmapDataSet(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1615
    :cond_27
    goto :goto_4

    .line 1616
    :cond_28
    return-void
.end method

.method private blacklist getChildOps(Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;)I
    .registers 5

    .line 1545
    invoke-interface {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1546
    invoke-interface {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;->getList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 1547
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    if-eqz v2, :cond_36

    .line 1548
    nop

    .line 1549
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;

    if-eqz v2, :cond_2d

    .line 1550
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LoopOperation;->estimateIterations()I

    move-result v2

    goto :goto_2e

    .line 1549
    :cond_2d
    const/4 v2, 0x1

    .line 1552
    :goto_2e
    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    invoke-direct {p0, v1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getChildOps(Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;)I

    move-result v1

    mul-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 1554
    :cond_36
    goto :goto_10

    .line 1555
    :cond_37
    return v0
.end method

.method private blacklist getDocInfo(Ljava/util/ArrayList;Lcom/android/internal/widget/remotecompose/core/CoreDocument$DocInfo;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;",
            "Lcom/android/internal/widget/remotecompose/core/CoreDocument$DocInfo;",
            ")V"
        }
    .end annotation

    .line 1630
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1631
    iget v1, p2, Lcom/android/internal/widget/remotecompose/core/CoreDocument$DocInfo;->mNumberOfOps:I

    add-int/2addr v1, v0

    iput v1, p2, Lcom/android/internal/widget/remotecompose/core/CoreDocument$DocInfo;->mNumberOfOps:I

    .line 1632
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 1633
    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    if-eqz v1, :cond_27

    .line 1634
    move-object v1, v0

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    invoke-interface {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;->getList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getDocInfo(Ljava/util/ArrayList;Lcom/android/internal/widget/remotecompose/core/CoreDocument$DocInfo;)V

    .line 1636
    :cond_27
    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;

    if-eqz v1, :cond_41

    .line 1637
    iget v1, p2, Lcom/android/internal/widget/remotecompose/core/CoreDocument$DocInfo;->mNumberOfImages:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p2, Lcom/android/internal/widget/remotecompose/core/CoreDocument$DocInfo;->mNumberOfImages:I

    .line 1638
    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;

    .line 1639
    iget v1, p2, Lcom/android/internal/widget/remotecompose/core/CoreDocument$DocInfo;->mSizeOfImages:I

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->getHeight()I

    move-result v0

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iput v1, p2, Lcom/android/internal/widget/remotecompose/core/CoreDocument$DocInfo;->mSizeOfImages:I

    .line 1642
    :cond_41
    goto :goto_d

    .line 1643
    :cond_42
    return-void
.end method

.method public static blacklist getDocumentApiLevel()I
    .registers 1

    .line 148
    const/16 v0, 0x8

    return v0
.end method

.method private blacklist getNamedVars(ILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1362
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 1363
    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable;

    if-eqz v1, :cond_20

    .line 1364
    move-object v1, v0

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable;

    .line 1365
    iget v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable;->mVarType:I

    if-ne v2, p1, :cond_20

    .line 1366
    iget-object v1, v1, Lcom/android/internal/widget/remotecompose/core/operations/NamedVariable;->mVarName:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1369
    :cond_20
    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    if-eqz v1, :cond_2d

    .line 1370
    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    invoke-interface {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getNamedVars(ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1372
    :cond_2d
    goto :goto_4

    .line 1373
    :cond_2e
    return-void
.end method

.method private blacklist inflateComponents(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;"
        }
    .end annotation

    .line 895
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 896
    nop

    .line 898
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 899
    nop

    .line 901
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mLastId:I

    .line 902
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    move-object v3, v0

    move-object v4, v2

    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 903
    instance-of v6, v5, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;

    if-eqz v6, :cond_39

    .line 904
    move-object v6, v5

    check-cast v6, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;

    .line 905
    iget v7, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mBitmapMemory:I

    invoke-virtual {v6}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->getHeight()I

    move-result v8

    invoke-virtual {v6}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->getWidth()I

    move-result v6

    mul-int/2addr v8, v6

    mul-int/lit8 v8, v8, 0x4

    add-int/2addr v7, v8

    iput v7, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mBitmapMemory:I

    .line 907
    :cond_39
    instance-of v6, v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    if-eqz v6, :cond_7e

    .line 908
    check-cast v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    .line 909
    instance-of v3, v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v3, :cond_76

    .line 910
    move-object v3, v5

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 914
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_61

    .line 915
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    .line 916
    instance-of v7, v6, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v7, :cond_61

    .line 917
    check-cast v6, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v3, v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->setParent(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)V

    .line 920
    :cond_61
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getComponentId()I

    move-result v6

    iget v7, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mLastId:I

    if-ge v6, v7, :cond_6f

    .line 921
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getComponentId()I

    move-result v6

    iput v6, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mLastId:I

    .line 923
    :cond_6f
    instance-of v6, v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    if-eqz v6, :cond_76

    .line 924
    move-object v4, v3

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    .line 927
    :cond_76
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 928
    invoke-interface {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;->getList()Ljava/util/ArrayList;

    move-result-object v3

    .line 929
    goto :goto_de

    :cond_7e
    instance-of v6, v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/ContainerEnd;

    if-eqz v6, :cond_d1

    .line 931
    nop

    .line 933
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_96

    .line 934
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    goto :goto_97

    .line 933
    :cond_96
    move-object v3, v2

    .line 936
    :goto_97
    nop

    .line 937
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_ab

    .line 938
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    goto :goto_ac

    .line 937
    :cond_ab
    move-object v5, v2

    .line 940
    :goto_ac
    if-eqz v5, :cond_b3

    .line 941
    invoke-interface {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;->getList()Ljava/util/ArrayList;

    move-result-object v5

    goto :goto_b4

    .line 943
    :cond_b3
    move-object v5, v0

    .line 945
    :goto_b4
    if-eqz v3, :cond_c6

    .line 946
    instance-of v6, v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v6, :cond_c0

    .line 947
    move-object v6, v3

    check-cast v6, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 948
    invoke-virtual {v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->inflate()V

    .line 950
    :cond_c0
    move-object v6, v3

    check-cast v6, Lcom/android/internal/widget/remotecompose/core/Operation;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 952
    :cond_c6
    instance-of v6, v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasOperations;

    if-eqz v6, :cond_cf

    .line 953
    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasOperations;

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/CanvasOperations;->setComponent(Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;)V

    .line 955
    :cond_cf
    move-object v3, v5

    goto :goto_de

    .line 956
    :cond_d1
    instance-of v6, v5, Lcom/android/internal/widget/remotecompose/core/operations/DrawContent;

    if-eqz v6, :cond_db

    .line 957
    move-object v6, v5

    check-cast v6, Lcom/android/internal/widget/remotecompose/core/operations/DrawContent;

    invoke-virtual {v6, v4}, Lcom/android/internal/widget/remotecompose/core/operations/DrawContent;->setComponent(Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;)V

    .line 959
    :cond_db
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 961
    :goto_de
    goto/16 :goto_16

    .line 962
    :cond_e0
    return-object v3
.end method

.method static synthetic blacklist lambda$applyUpdate$0(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/android/internal/widget/remotecompose/core/Operation;)V
    .registers 8

    .line 505
    instance-of v0, p6, Lcom/android/internal/widget/remotecompose/core/operations/TextData;

    if-eqz v0, :cond_10

    .line 506
    check-cast p6, Lcom/android/internal/widget/remotecompose/core/operations/TextData;

    .line 507
    iget p1, p6, Lcom/android/internal/widget/remotecompose/core/operations/TextData;->mTextId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    goto :goto_61

    :cond_10
    instance-of p0, p6, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;

    if-eqz p0, :cond_20

    .line 509
    check-cast p6, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;

    .line 510
    iget p0, p6, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    goto :goto_61

    :cond_20
    instance-of p0, p6, Lcom/android/internal/widget/remotecompose/core/operations/FloatConstant;

    if-eqz p0, :cond_30

    .line 512
    check-cast p6, Lcom/android/internal/widget/remotecompose/core/operations/FloatConstant;

    .line 513
    iget p0, p6, Lcom/android/internal/widget/remotecompose/core/operations/FloatConstant;->mId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2, p0, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    goto :goto_61

    :cond_30
    instance-of p0, p6, Lcom/android/internal/widget/remotecompose/core/types/IntegerConstant;

    if-eqz p0, :cond_40

    .line 515
    check-cast p6, Lcom/android/internal/widget/remotecompose/core/types/IntegerConstant;

    .line 516
    iget p0, p6, Lcom/android/internal/widget/remotecompose/core/types/IntegerConstant;->mId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p3, p0, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    goto :goto_61

    :cond_40
    instance-of p0, p6, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;

    if-eqz p0, :cond_50

    .line 518
    check-cast p6, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;

    .line 519
    iget p0, p6, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;->mId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p4, p0, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_60

    .line 520
    :cond_50
    instance-of p0, p6, Lcom/android/internal/widget/remotecompose/core/operations/DataListFloat;

    if-eqz p0, :cond_60

    .line 521
    check-cast p6, Lcom/android/internal/widget/remotecompose/core/operations/DataListFloat;

    .line 522
    iget p0, p6, Lcom/android/internal/widget/remotecompose/core/operations/DataListFloat;->mId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p5, p0, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_61

    .line 520
    :cond_60
    :goto_60
    nop

    .line 524
    :goto_61
    return-void
.end method

.method static synthetic blacklist lambda$applyUpdate$1(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/android/internal/widget/remotecompose/core/Operation;)V
    .registers 8

    .line 529
    instance-of v0, p6, Lcom/android/internal/widget/remotecompose/core/operations/TextData;

    if-eqz v0, :cond_1c

    .line 530
    check-cast p6, Lcom/android/internal/widget/remotecompose/core/operations/TextData;

    .line 531
    iget p1, p6, Lcom/android/internal/widget/remotecompose/core/operations/TextData;->mTextId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/widget/remotecompose/core/operations/TextData;

    .line 532
    if-eqz p0, :cond_1a

    .line 533
    invoke-virtual {p0, p6}, Lcom/android/internal/widget/remotecompose/core/operations/TextData;->update(Lcom/android/internal/widget/remotecompose/core/operations/TextData;)V

    .line 534
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/TextData;->markDirty()V

    .line 536
    :cond_1a
    goto/16 :goto_a5

    :cond_1c
    instance-of p0, p6, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;

    if-eqz p0, :cond_38

    .line 537
    check-cast p6, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;

    .line 538
    iget p0, p6, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->mImageId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;

    .line 539
    if-eqz p0, :cond_36

    .line 540
    invoke-virtual {p0, p6}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->update(Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;)V

    .line 541
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;->markDirty()V

    .line 543
    :cond_36
    goto/16 :goto_a5

    :cond_38
    instance-of p0, p6, Lcom/android/internal/widget/remotecompose/core/operations/FloatConstant;

    if-eqz p0, :cond_53

    .line 544
    check-cast p6, Lcom/android/internal/widget/remotecompose/core/operations/FloatConstant;

    .line 545
    iget p0, p6, Lcom/android/internal/widget/remotecompose/core/operations/FloatConstant;->mId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/widget/remotecompose/core/operations/FloatConstant;

    .line 546
    if-eqz p0, :cond_52

    .line 547
    invoke-virtual {p0, p6}, Lcom/android/internal/widget/remotecompose/core/operations/FloatConstant;->update(Lcom/android/internal/widget/remotecompose/core/operations/FloatConstant;)V

    .line 548
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/FloatConstant;->markDirty()V

    .line 550
    :cond_52
    goto :goto_a5

    :cond_53
    instance-of p0, p6, Lcom/android/internal/widget/remotecompose/core/types/IntegerConstant;

    if-eqz p0, :cond_6e

    .line 551
    check-cast p6, Lcom/android/internal/widget/remotecompose/core/types/IntegerConstant;

    .line 552
    iget p0, p6, Lcom/android/internal/widget/remotecompose/core/types/IntegerConstant;->mId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/widget/remotecompose/core/types/IntegerConstant;

    .line 553
    if-eqz p0, :cond_6d

    .line 554
    invoke-virtual {p0, p6}, Lcom/android/internal/widget/remotecompose/core/types/IntegerConstant;->update(Lcom/android/internal/widget/remotecompose/core/types/IntegerConstant;)V

    .line 555
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/types/IntegerConstant;->markDirty()V

    .line 557
    :cond_6d
    goto :goto_a5

    :cond_6e
    instance-of p0, p6, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;

    if-eqz p0, :cond_89

    .line 558
    check-cast p6, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;

    .line 559
    iget p0, p6, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;->mId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;

    .line 560
    if-eqz p0, :cond_a4

    .line 561
    invoke-virtual {p0, p6}, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;->update(Lcom/android/internal/widget/remotecompose/core/types/LongConstant;)V

    .line 562
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;->markDirty()V

    goto :goto_a4

    .line 564
    :cond_89
    instance-of p0, p6, Lcom/android/internal/widget/remotecompose/core/operations/DataListFloat;

    if-eqz p0, :cond_a4

    .line 565
    check-cast p6, Lcom/android/internal/widget/remotecompose/core/operations/DataListFloat;

    .line 566
    iget p0, p6, Lcom/android/internal/widget/remotecompose/core/operations/DataListFloat;->mId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p5, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/widget/remotecompose/core/operations/DataListFloat;

    .line 567
    if-eqz p0, :cond_a5

    .line 568
    invoke-virtual {p0, p6}, Lcom/android/internal/widget/remotecompose/core/operations/DataListFloat;->update(Lcom/android/internal/widget/remotecompose/core/operations/DataListFloat;)V

    .line 569
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/DataListFloat;->markDirty()V

    goto :goto_a5

    .line 564
    :cond_a4
    :goto_a4
    nop

    .line 572
    :cond_a5
    :goto_a5
    return-void
.end method

.method private blacklist recursiveTraverse(Ljava/util/ArrayList;Lcom/android/internal/widget/remotecompose/core/CoreDocument$Visitor;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;",
            "Lcom/android/internal/widget/remotecompose/core/CoreDocument$Visitor;",
            ")V"
        }
    .end annotation

    .line 607
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 608
    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    if-eqz v1, :cond_1e

    .line 609
    move-object v1, v0

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    invoke-interface {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;->getList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->recursiveTraverse(Ljava/util/ArrayList;Lcom/android/internal/widget/remotecompose/core/CoreDocument$Visitor;)V

    .line 611
    :cond_1e
    invoke-interface {p2, v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$Visitor;->visit(Lcom/android/internal/widget/remotecompose/core/Operation;)V

    .line 612
    goto :goto_4

    .line 613
    :cond_22
    return-void
.end method

.method private blacklist registerVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/RemoteContext;",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    .line 976
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 977
    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    if-eqz v1, :cond_1a

    .line 978
    move-object v1, v0

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    invoke-interface {v1, p1}, Lcom/android/internal/widget/remotecompose/core/VariableSupport;->registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 980
    :cond_1a
    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v1, :cond_31

    .line 981
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mComponentMap:Ljava/util/HashMap;

    move-object v2, v0

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getComponentId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    invoke-virtual {v2, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->registerVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 984
    :cond_31
    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    if-eqz v1, :cond_3f

    .line 985
    move-object v1, v0

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    invoke-interface {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;->getList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->registerVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Ljava/util/ArrayList;)V

    .line 987
    :cond_3f
    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;

    if-eqz v1, :cond_78

    .line 988
    move-object v1, v0

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;

    .line 989
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mComponentMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;->getComponentId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 990
    if-eqz v2, :cond_5c

    .line 991
    invoke-virtual {v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->addComponentValue(Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;)V

    goto :goto_78

    .line 993
    :cond_5c
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "=> Component not found for id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/ComponentValue;->getComponentId()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 996
    :cond_78
    :goto_78
    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    if-eqz v1, :cond_9c

    .line 997
    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_86
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;

    .line 998
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    if-eqz v2, :cond_9b

    .line 999
    check-cast v1, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    invoke-interface {v1, p1}, Lcom/android/internal/widget/remotecompose/core/VariableSupport;->registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 1001
    :cond_9b
    goto :goto_86

    .line 1003
    :cond_9c
    goto/16 :goto_4

    .line 1004
    :cond_9e
    return-void
.end method

.method private blacklist sizeOfComponent(Lcom/android/internal/widget/remotecompose/core/Operation;Lcom/android/internal/widget/remotecompose/core/WireBuffer;)I
    .registers 4

    .line 1684
    const/16 v0, 0x64

    invoke-virtual {p2, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->reset(I)V

    .line 1685
    invoke-virtual {p1, p2}, Lcom/android/internal/widget/remotecompose/core/Operation;->write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 1686
    invoke-virtual {p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->getSize()I

    move-result p1

    .line 1687
    invoke-virtual {p2, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->reset(I)V

    .line 1688
    return p1
.end method

.method private blacklist toNestedString(Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 10

    .line 1733
    invoke-interface {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;->getList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 1734
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    :goto_20
    if-ge v4, v3, :cond_30

    aget-object v5, v1, v4

    .line 1735
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1736
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1737
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1734
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 1739
    :cond_30
    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    if-eqz v1, :cond_4c

    .line 1740
    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->toNestedString(Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1742
    :cond_4c
    goto :goto_8

    .line 1743
    :cond_4d
    return-void
.end method

.method private blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;ILjava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/RemoteContext;",
            "I",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    .line 1411
    const/4 v0, 0x0

    :goto_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_33

    .line 1412
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 1413
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/Operation;->isDirty()Z

    move-result v2

    if-eqz v2, :cond_23

    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    if-eqz v2, :cond_23

    .line 1414
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    invoke-interface {v2, p1}, Lcom/android/internal/widget/remotecompose/core/VariableSupport;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 1415
    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/Operation;->apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 1416
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/Operation;->markNotDirty()V

    .line 1418
    :cond_23
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    if-eqz v2, :cond_30

    .line 1419
    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    invoke-interface {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;->getList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;ILjava/util/List;)V

    .line 1411
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1422
    :cond_33
    return-void
.end method

.method private blacklist warnClickListeners(Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;)V
    .registers 3

    .line 1227
    iget v0, p1, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mId:I

    iget-object p1, p1, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mMetadata:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->notifyOfException(ILjava/lang/String;)V

    .line 1228
    return-void
.end method


# virtual methods
.method public blacklist addActionCallback(Lcom/android/internal/widget/remotecompose/core/CoreDocument$ActionCallback;)V
    .registers 3

    .line 689
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mActionListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 690
    return-void
.end method

.method public blacklist addClickArea(ILjava/lang/String;FFFFLjava/lang/String;)V
    .registers 16

    .line 1137
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;-><init>(ILjava/lang/String;FFFFLjava/lang/String;)V

    .line 1141
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mClickAreas:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1142
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mClickAreas:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1143
    return-void
.end method

.method public blacklist addIdActionListener(Lcom/android/internal/widget/remotecompose/core/CoreDocument$IdActionCallback;)V
    .registers 3

    .line 1160
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mIdActionListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1161
    return-void
.end method

.method public blacklist addTouchListener(Lcom/android/internal/widget/remotecompose/core/TouchListener;)V
    .registers 3

    .line 1151
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mTouchListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1152
    return-void
.end method

.method public blacklist appliedTouchOperation(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)V
    .registers 3

    .line 651
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mAppliedTouchOperations:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 652
    return-void
.end method

.method public blacklist applyUpdate(Lcom/android/internal/widget/remotecompose/core/CoreDocument;)V
    .registers 10

    .line 496
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 497
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 498
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 499
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 500
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 501
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 502
    iget-object v7, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$$ExternalSyntheticLambda0;

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$$ExternalSyntheticLambda0;-><init>(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V

    invoke-direct {p0, v7, v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->recursiveTraverse(Ljava/util/ArrayList;Lcom/android/internal/widget/remotecompose/core/CoreDocument$Visitor;)V

    .line 526
    iget-object p1, p1, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$$ExternalSyntheticLambda1;

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$$ExternalSyntheticLambda1;-><init>(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->recursiveTraverse(Ljava/util/ArrayList;Lcom/android/internal/widget/remotecompose/core/CoreDocument$Visitor;)V

    .line 573
    return-void
.end method

.method public blacklist bitmapMemory()I
    .registers 2

    .line 599
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mBitmapMemory:I

    return v0
.end method

.method public blacklist canBeDisplayed(IIJ)Z
    .registers 6

    .line 1089
    iget-object p3, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mVersion:Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;

    iget p3, p3, Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;->major:I

    const/4 p4, 0x1

    if-ge p3, p1, :cond_8

    .line 1090
    return p4

    .line 1092
    :cond_8
    iget-object p3, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mVersion:Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;

    iget p3, p3, Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;->major:I

    const/4 v0, 0x0

    if-le p3, p1, :cond_10

    .line 1093
    return v0

    .line 1096
    :cond_10
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mVersion:Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;

    iget p1, p1, Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;->minor:I

    if-gt p1, p2, :cond_17

    goto :goto_18

    :cond_17
    move p4, v0

    :goto_18
    return p4
.end method

.method public blacklist checkShaders(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument$ShaderControl;)V
    .registers 4

    .line 1770
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->checkShaders(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument$ShaderControl;Ljava/util/List;)V

    .line 1771
    return-void
.end method

.method public blacklist clearActionCallbacks()V
    .registers 2

    .line 696
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mActionListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 697
    return-void
.end method

.method public blacklist computeScale(FF[F)V
    .registers 7

    .line 261
    nop

    .line 262
    nop

    .line 263
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentSizing:I

    const/4 v1, 0x2

    const/high16 v2, 0x3f800000    # 1.0f

    if-ne v0, v1, :cond_65

    .line 265
    nop

    .line 266
    nop

    .line 267
    nop

    .line 268
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentMode:I

    packed-switch v0, :pswitch_data_6e

    goto :goto_65

    .line 301
    :pswitch_12
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mWidth:I

    int-to-float v0, v0

    div-float v2, p1, v0

    .line 302
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mHeight:I

    int-to-float p1, p1

    div-float p1, p2, p1

    .line 303
    nop

    .line 304
    nop

    .line 305
    goto :goto_66

    .line 294
    :pswitch_1f
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mWidth:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 295
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mHeight:I

    int-to-float v0, v0

    div-float/2addr p2, v0

    .line 296
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 297
    nop

    .line 298
    nop

    .line 299
    move p1, v2

    goto :goto_66

    .line 277
    :pswitch_2f
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mWidth:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 278
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mHeight:I

    int-to-float v0, v0

    div-float/2addr p2, v0

    .line 279
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 280
    nop

    .line 281
    nop

    .line 282
    move p1, v2

    goto :goto_66

    .line 289
    :pswitch_3f
    iget p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mHeight:I

    int-to-float p1, p1

    div-float v2, p2, p1

    .line 290
    nop

    .line 291
    nop

    .line 292
    move p1, v2

    goto :goto_66

    .line 284
    :pswitch_48
    iget p2, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mWidth:I

    int-to-float p2, p2

    div-float v2, p1, p2

    .line 285
    nop

    .line 286
    nop

    .line 287
    move p1, v2

    goto :goto_66

    .line 270
    :pswitch_51
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mWidth:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 271
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mHeight:I

    int-to-float v0, v0

    div-float/2addr p2, v0

    .line 272
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 273
    nop

    .line 274
    nop

    .line 275
    move p1, v2

    goto :goto_66

    .line 310
    :cond_65
    :goto_65
    move p1, v2

    :goto_66
    const/4 p2, 0x0

    aput v2, p3, p2

    .line 311
    const/4 p2, 0x1

    aput p1, p3, p2

    .line 312
    return-void

    nop

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_51
        :pswitch_48
        :pswitch_3f
        :pswitch_2f
        :pswitch_1f
        :pswitch_12
    .end packed-switch
.end method

.method public blacklist displayHierarchy()Ljava/lang/String;
    .registers 6

    .line 418
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;-><init>()V

    .line 419
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 420
    instance-of v3, v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    const/4 v4, 0x0

    if-eqz v3, :cond_25

    .line 421
    move-object v3, v2

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-virtual {v3, v2, v4, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->displayHierarchy(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V

    goto :goto_2e

    .line 422
    :cond_25
    instance-of v3, v2, Lcom/android/internal/widget/remotecompose/core/SerializableToString;

    if-eqz v3, :cond_2e

    .line 423
    check-cast v2, Lcom/android/internal/widget/remotecompose/core/SerializableToString;

    invoke-interface {v2, v4, v0}, Lcom/android/internal/widget/remotecompose/core/SerializableToString;->serializeToString(ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V

    .line 425
    :cond_2e
    :goto_2e
    goto :goto_b

    .line 426
    :cond_2f
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist evaluateFloatExpression(IILcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 5

    .line 454
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mFloatExpressions:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;

    .line 455
    if-eqz p1, :cond_15

    .line 456
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->evaluate(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result p1

    .line 457
    invoke-virtual {p3, p2, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->overrideFloat(IF)V

    .line 459
    :cond_15
    return-void
.end method

.method public blacklist evaluateIntExpression(JILcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 6

    .line 438
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mIntegerExpressions:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;

    .line 439
    if-eqz p1, :cond_15

    .line 440
    invoke-virtual {p1, p4}, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->evaluate(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result p1

    .line 441
    invoke-virtual {p4, p3, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->overrideInteger(II)V

    .line 443
    :cond_15
    return-void
.end method

.method public blacklist getBitmapDataSet()[Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;
    .registers 3

    .line 1601
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1602
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getBitmapDataSet(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1603
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/widget/remotecompose/core/operations/BitmapData;

    return-object v0
.end method

.method public blacklist getBuffer()Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;
    .registers 2

    .line 198
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mBuffer:Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;

    return-object v0
.end method

.method public blacklist getClickAreas()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;",
            ">;"
        }
    .end annotation

    .line 375
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mClickAreas:Ljava/util/HashSet;

    return-object v0
.end method

.method public blacklist getClock()Ljava/time/Clock;
    .registers 2

    .line 141
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mClock:Ljava/time/Clock;

    return-object v0
.end method

.method public blacklist getComponent(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .registers 3

    .line 405
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    if-eqz v0, :cond_b

    .line 406
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->getComponent(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    move-result-object p1

    return-object p1

    .line 408
    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method public blacklist getContentDescription()Ljava/lang/String;
    .registers 2

    .line 153
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentDescription:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getContentMode()I
    .registers 2

    .line 223
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentMode:I

    return v0
.end method

.method public blacklist getContentScroll()I
    .registers 2

    .line 215
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentScroll:I

    return v0
.end method

.method public blacklist getContentSizing()I
    .registers 2

    .line 219
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentSizing:I

    return v0
.end method

.method public blacklist getDocInfo()Lcom/android/internal/widget/remotecompose/core/CoreDocument$DocInfo;
    .registers 3

    .line 1624
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$DocInfo;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$DocInfo;-><init>()V

    .line 1625
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getDocInfo(Ljava/util/ArrayList;Lcom/android/internal/widget/remotecompose/core/CoreDocument$DocInfo;)V

    .line 1626
    return-object v0
.end method

.method public blacklist getHeight()I
    .registers 2

    .line 183
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mHeight:I

    return v0
.end method

.method public blacklist getHostExceptionID()I
    .registers 2

    .line 590
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mHostExceptionID:I

    return v0
.end method

.method public blacklist getIdActionListeners()Ljava/util/HashSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lcom/android/internal/widget/remotecompose/core/CoreDocument$IdActionCallback;",
            ">;"
        }
    .end annotation

    .line 1170
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mIdActionListeners:Ljava/util/HashSet;

    return-object v0
.end method

.method public blacklist getNamedColors()[Ljava/lang/String;
    .registers 2

    .line 1347
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getNamedVariables(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getNamedVariables(I)[Ljava/lang/String;
    .registers 4

    .line 1356
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1357
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getNamedVars(ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1358
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method public blacklist getNumberOfOps()I
    .registers 5

    .line 1534
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1536
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 1537
    instance-of v3, v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    if-eqz v3, :cond_23

    .line 1538
    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    invoke-direct {p0, v2}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getChildOps(Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;)I

    move-result v2

    add-int/2addr v0, v2

    .line 1540
    :cond_23
    goto :goto_c

    .line 1541
    :cond_24
    return v0
.end method

.method public blacklist getOperations()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;"
        }
    .end annotation

    .line 1747
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getOpsPerFrame()I
    .registers 2

    .line 1390
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mLastOpCount:I

    return v0
.end method

.method public blacklist getProperty(S)Ljava/lang/Object;
    .registers 3

    .line 484
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mDocProperties:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    if-nez v0, :cond_6

    .line 485
    const/4 p1, 0x0

    return-object p1

    .line 487
    :cond_6
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mDocProperties:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getRemoteComposeState()Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;
    .registers 2

    .line 207
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    return-object v0
.end method

.method public blacklist getRequiredCapabilities()J
    .registers 3

    .line 161
    iget-wide v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRequiredCapabilities:J

    return-wide v0
.end method

.method public blacklist getRootLayoutComponent()Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;
    .registers 2

    .line 385
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    return-object v0
.end method

.method public blacklist getStats()[Ljava/lang/String;
    .registers 11

    .line 1652
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1653
    new-instance v1, Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;-><init>()V

    .line 1654
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1655
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1656
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_67

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 1657
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 1659
    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_42

    .line 1660
    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    goto :goto_4d

    .line 1662
    :cond_42
    const/4 v9, 0x2

    new-array v9, v9, [I

    .line 1663
    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v8, v9

    .line 1666
    :goto_4d
    aget v9, v8, v7

    add-int/2addr v9, v6

    aput v9, v8, v7

    .line 1667
    aget v7, v8, v6

    invoke-direct {p0, v5, v1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->sizeOfComponent(Lcom/android/internal/widget/remotecompose/core/Operation;Lcom/android/internal/widget/remotecompose/core/WireBuffer;)I

    move-result v9

    add-int/2addr v7, v9

    aput v7, v8, v6

    .line 1668
    instance-of v6, v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    if-eqz v6, :cond_66

    .line 1669
    check-cast v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    .line 1670
    invoke-direct {p0, v5, v3, v1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->addChildren(Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;Ljava/util/HashMap;Lcom/android/internal/widget/remotecompose/core/WireBuffer;)I

    move-result v5

    add-int/2addr v2, v5

    .line 1672
    :cond_66
    goto :goto_1b

    .line 1674
    :cond_67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "number of operations : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1676
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_85
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1677
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 1678
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v5, v4, v7

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v4, v4, v6

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1679
    goto :goto_85

    .line 1680
    :cond_c0
    new-array v1, v7, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getWidth()I
    .registers 2

    .line 169
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mWidth:I

    return v0
.end method

.method public blacklist haptic(I)V
    .registers 3

    .line 638
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mHapticEngine:Lcom/android/internal/widget/remotecompose/core/CoreDocument$HapticEngine;

    if-eqz v0, :cond_9

    .line 639
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mHapticEngine:Lcom/android/internal/widget/remotecompose/core/CoreDocument$HapticEngine;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$HapticEngine;->haptic(I)V

    .line 641
    :cond_9
    return-void
.end method

.method public blacklist hasTouchListener()Z
    .registers 4

    .line 1236
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    .line 1237
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->getHasTouchListeners()Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v1

    goto :goto_11

    :cond_10
    move v0, v2

    .line 1238
    :goto_11
    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mTouchListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_1d

    :cond_1c
    move v1, v2

    :cond_1d
    :goto_1d
    return v1
.end method

.method public blacklist initFromBuffer(Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;)V
    .registers 8

    .line 855
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    .line 856
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->inflateFromBuffer(Ljava/util/ArrayList;)V

    .line 857
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 858
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/Header;

    if-eqz v2, :cond_28

    .line 860
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/Header;

    .line 861
    invoke-virtual {v2, p0}, Lcom/android/internal/widget/remotecompose/core/operations/Header;->setVersion(Lcom/android/internal/widget/remotecompose/core/CoreDocument;)V

    .line 863
    :cond_28
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;

    if-eqz v2, :cond_3b

    .line 864
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;

    .line 865
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mIntegerExpressions:Ljava/util/HashMap;

    iget v4, v2, Lcom/android/internal/widget/remotecompose/core/operations/IntegerExpression;->mId:I

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 867
    :cond_3b
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;

    if-eqz v2, :cond_4c

    .line 868
    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;

    .line 869
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mFloatExpressions:Ljava/util/HashMap;

    iget v3, v1, Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;->mId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 871
    :cond_4c
    goto :goto_12

    .line 872
    :cond_4d
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mBitmapMemory:I

    .line 873
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->inflateComponents(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    .line 875
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mBuffer:Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;

    .line 876
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_60
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_76

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 877
    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    if-eqz v1, :cond_75

    .line 878
    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    .line 879
    goto :goto_76

    .line 881
    :cond_75
    goto :goto_60

    .line 882
    :cond_76
    :goto_76
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    if-eqz p1, :cond_81

    .line 883
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mLastId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->assignIds(I)V

    .line 885
    :cond_81
    return-void
.end method

.method public blacklist initializeContext(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 3

    .line 1038
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->initializeContext(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Ljava/util/Map;)V

    .line 1039
    return-void
.end method

.method public blacklist initializeContext(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/RemoteContext;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1051
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->reset()V

    .line 1052
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->setContext(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 1053
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mClickAreas:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1054
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->setNextId(I)V

    .line 1055
    if-eqz p2, :cond_3a

    .line 1056
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1057
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(ILjava/lang/Object;)V

    .line 1058
    goto :goto_20

    .line 1061
    :cond_3a
    iput-object p0, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    .line 1062
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    iput-object p2, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    .line 1064
    sget-object p2, Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;->DATA:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    iput-object p2, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mMode:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    .line 1065
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mTimeVariables:Lcom/android/internal/widget/remotecompose/core/TimeVariables;

    invoke-virtual {p2, p1}, Lcom/android/internal/widget/remotecompose/core/TimeVariables;->updateTime(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 1067
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->registerVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Ljava/util/ArrayList;)V

    .line 1068
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->applyOperations(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Ljava/util/ArrayList;)V

    .line 1069
    sget-object p2, Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;->UNSET:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    iput-object p2, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mMode:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    .line 1074
    return-void
.end method

.method public blacklist invalidateMeasure()V
    .registers 2

    .line 392
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    if-eqz v0, :cond_9

    .line 393
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->invalidateMeasure()V

    .line 395
    :cond_9
    return-void
.end method

.method public blacklist isUpdateDoc()Z
    .registers 2

    .line 1813
    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mIsUpdateDoc:Z

    return v0
.end method

.method public blacklist needsRepaint()I
    .registers 2

    .line 1399
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRepaintNext:I

    return v0
.end method

.method public blacklist notifyOfException(ILjava/lang/String;)V
    .registers 5

    .line 1218
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mIdActionListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/CoreDocument$IdActionCallback;

    .line 1219
    invoke-interface {v1, p1, p2}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$IdActionCallback;->onAction(ILjava/lang/String;)V

    .line 1220
    goto :goto_6

    .line 1221
    :cond_16
    return-void
.end method

.method public blacklist onClick(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FF)V
    .registers 7

    .line 1178
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mClickAreas:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;

    .line 1179
    invoke-virtual {v1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1180
    invoke-direct {p0, v1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->warnClickListeners(Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;)V

    .line 1182
    :cond_1b
    goto :goto_6

    .line 1183
    :cond_1c
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    if-eqz v0, :cond_25

    .line 1184
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    invoke-virtual {v0, p1, p0, p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->onClick(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;FF)V

    .line 1186
    :cond_25
    return-void
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/RemoteContext;I)V
    .registers 14

    .line 1431
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->clearLastOpCount()V

    .line 1432
    nop

    .line 1433
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getPaintContext()Lcom/android/internal/widget/remotecompose/core/PaintContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->clearNeedsRepaint()V

    .line 1434
    const/16 v0, 0x1b

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getDensity()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 1435
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;->UNSET:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    iput-object v0, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mMode:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    .line 1438
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->setTheme(I)V

    .line 1440
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    iput-object v1, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    .line 1441
    iget-object v1, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->setContext(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 1455
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentSizing:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_5e

    .line 1457
    iget v1, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mWidth:F

    iget v2, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mHeight:F

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mScaleOutput:[F

    invoke-virtual {p0, v1, v2, v5}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->computeScale(FF[F)V

    .line 1458
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mScaleOutput:[F

    aget v8, v1, v3

    .line 1459
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mScaleOutput:[F

    aget v9, v1, v4

    .line 1460
    iget v6, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mWidth:F

    iget v7, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mHeight:F

    iget-object v10, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mTranslateOutput:[F

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->computeTranslate(FFFF[F)V

    .line 1461
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getPaintContext()Lcom/android/internal/widget/remotecompose/core/PaintContext;

    move-result-object v1

    iget-object v2, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mTranslateOutput:[F

    aget v2, v2, v3

    iget-object v6, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mTranslateOutput:[F

    aget v6, v6, v4

    invoke-virtual {v1, v2, v6}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    .line 1462
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getPaintContext()Lcom/android/internal/widget/remotecompose/core/PaintContext;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->scale(FF)V

    .line 1463
    goto :goto_6b

    .line 1466
    :cond_5e
    move-object v5, p0

    iget v1, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mWidth:F

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->setWidth(I)V

    .line 1467
    iget v1, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mHeight:F

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->setHeight(I)V

    .line 1469
    :goto_6b
    iget-object v1, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mTimeVariables:Lcom/android/internal/widget/remotecompose/core/TimeVariables;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/TimeVariables;->updateTime(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 1470
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->updateOps()I

    move-result v1

    iput v1, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRepaintNext:I

    .line 1471
    iget-object v1, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    if-eqz v1, :cond_c2

    .line 1472
    iget v1, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mWidth:F

    iget-object v2, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->getWidth()F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_92

    iget v1, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mHeight:F

    iget-object v2, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    .line 1473
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->getHeight()F

    move-result v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_97

    .line 1474
    :cond_92
    iget-object v1, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->invalidateMeasure()V

    .line 1476
    :cond_97
    iget-object v1, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->needsMeasure()Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 1477
    iget-object v1, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->layout(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 1479
    :cond_a4
    iget-object v1, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->needsBoundsAnimation()Z

    move-result v1

    if-eqz v1, :cond_b8

    .line 1480
    iput v4, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRepaintNext:I

    .line 1481
    iget-object v1, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->clearNeedsBoundsAnimation()V

    .line 1482
    iget-object v1, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->animatingBounds(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 1488
    :cond_b8
    iget-object v1, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->doesNeedsRepaint()Z

    move-result v1

    if-eqz v1, :cond_c2

    .line 1489
    iput v4, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRepaintNext:I

    .line 1492
    :cond_c2
    sget-object v1, Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;->PAINT:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    iput-object v1, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mMode:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    .line 1493
    move v1, v3

    :goto_c7
    iget-object v2, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_110

    .line 1494
    iget-object v2, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 1497
    nop

    .line 1498
    if-eq p2, v0, :cond_eb

    .line 1499
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getTheme()I

    move-result v6

    .line 1500
    if-eq v6, p2, :cond_e9

    if-eq v6, v0, :cond_e9

    instance-of v6, v2, Lcom/android/internal/widget/remotecompose/core/operations/Theme;

    if-eqz v6, :cond_e7

    goto :goto_e9

    :cond_e7
    move v6, v3

    goto :goto_ec

    :cond_e9
    :goto_e9
    move v6, v4

    goto :goto_ec

    .line 1498
    :cond_eb
    move v6, v4

    .line 1505
    :goto_ec
    if-eqz v6, :cond_10d

    .line 1506
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/Operation;->isDirty()Z

    move-result v6

    .line 1507
    if-nez v6, :cond_f8

    instance-of v7, v2, Lcom/android/internal/widget/remotecompose/core/PaintOperation;

    if-eqz v7, :cond_10d

    .line 1508
    :cond_f8
    if-eqz v6, :cond_107

    instance-of v6, v2, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    if-eqz v6, :cond_107

    .line 1509
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/Operation;->markNotDirty()V

    .line 1510
    move-object v6, v2

    check-cast v6, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    invoke-interface {v6, p1}, Lcom/android/internal/widget/remotecompose/core/VariableSupport;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 1512
    :cond_107
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->incrementOpCount()V

    .line 1513
    invoke-virtual {v2, p1}, Lcom/android/internal/widget/remotecompose/core/Operation;->apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    .line 1493
    :cond_10d
    add-int/lit8 v1, v1, 0x1

    goto :goto_c7

    .line 1517
    :cond_110
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getPaintContext()Lcom/android/internal/widget/remotecompose/core/PaintContext;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->doesNeedsRepaint()Z

    move-result p2

    if-nez p2, :cond_126

    iget-object p2, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    if-eqz p2, :cond_128

    iget-object p2, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    .line 1518
    invoke-virtual {p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->doesNeedsRepaint()Z

    move-result p2

    if-eqz p2, :cond_128

    .line 1519
    :cond_126
    iput v4, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRepaintNext:I

    .line 1521
    :cond_128
    sget-object p2, Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;->UNSET:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    iput-object p2, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mMode:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    .line 1525
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getLastOpCount()I

    move-result p1

    iput p1, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mLastOpCount:I

    .line 1526
    return-void
.end method

.method public blacklist performClick(Lcom/android/internal/widget/remotecompose/core/RemoteContext;ILjava/lang/String;)V
    .registers 7

    .line 1196
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mClickAreas:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;

    .line 1197
    iget v2, v1, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mId:I

    if-ne v2, p2, :cond_1a

    .line 1198
    invoke-direct {p0, v1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->warnClickListeners(Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;)V

    .line 1199
    return-void

    .line 1201
    :cond_1a
    goto :goto_6

    .line 1203
    :cond_1b
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->notifyOfException(ILjava/lang/String;)V

    .line 1205
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getComponent(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    move-result-object p2

    .line 1206
    if-eqz p2, :cond_29

    .line 1207
    const/high16 p3, -0x40800000    # -1.0f

    invoke-virtual {p2, p1, p0, p3, p3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->onClick(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;FF)V

    .line 1209
    :cond_29
    return-void
.end method

.method public blacklist runNamedAction(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .line 678
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mActionListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ActionCallback;

    .line 679
    invoke-interface {v1, p1, p2}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ActionCallback;->onAction(Ljava/lang/String;Ljava/lang/Object;)V

    .line 680
    goto :goto_6

    .line 681
    :cond_16
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 4

    .line 463
    nop

    .line 464
    const-string v0, "CoreDocument"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mWidth:I

    .line 465
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "width"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mHeight:I

    .line 466
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "height"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    .line 467
    const-string/jumbo v1, "operations"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/util/List;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 468
    return-void
.end method

.method public blacklist setBuffer(Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;)V
    .registers 2

    .line 202
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mBuffer:Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;

    .line 203
    return-void
.end method

.method public blacklist setContentDescription(Ljava/lang/String;)V
    .registers 2

    .line 157
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentDescription:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public blacklist setHapticEngine(Lcom/android/internal/widget/remotecompose/core/CoreDocument$HapticEngine;)V
    .registers 2

    .line 629
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mHapticEngine:Lcom/android/internal/widget/remotecompose/core/CoreDocument$HapticEngine;

    .line 630
    return-void
.end method

.method public blacklist setHeight(I)V
    .registers 3

    .line 192
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mHeight:I

    .line 193
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->setWindowHeight(F)V

    .line 194
    return-void
.end method

.method public blacklist setHostExceptionID(I)V
    .registers 2

    .line 581
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mHostExceptionID:I

    .line 582
    return-void
.end method

.method public blacklist setProperties(Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 476
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mDocProperties:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    .line 477
    return-void
.end method

.method public blacklist setRemoteComposeState(Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;)V
    .registers 2

    .line 211
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    .line 212
    return-void
.end method

.method public blacklist setRequiredCapabilities(J)V
    .registers 3

    .line 165
    iput-wide p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRequiredCapabilities:J

    .line 166
    return-void
.end method

.method public blacklist setRootContentBehavior(IIII)V
    .registers 5

    .line 246
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentScroll:I

    .line 247
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentAlignment:I

    .line 248
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentSizing:I

    .line 249
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentMode:I

    .line 250
    return-void
.end method

.method public blacklist setUpdateDoc(Z)V
    .registers 2

    .line 1806
    iput-boolean p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mIsUpdateDoc:Z

    .line 1807
    return-void
.end method

.method public blacklist setVersion(III)V
    .registers 5

    .line 1107
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;-><init>(III)V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mVersion:Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;

    .line 1108
    return-void
.end method

.method public blacklist setWidth(I)V
    .registers 3

    .line 178
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mWidth:I

    .line 179
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->setWindowWidth(F)V

    .line 180
    return-void
.end method

.method public blacklist toNestedString()Ljava/lang/String;
    .registers 5

    .line 1720
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1721
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 1722
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1723
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1724
    instance-of v3, v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    if-eqz v3, :cond_2e

    .line 1725
    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;

    const-string v3, "  "

    invoke-direct {p0, v2, v0, v3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->toNestedString(Lcom/android/internal/widget/remotecompose/core/operations/layout/Container;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1727
    :cond_2e
    goto :goto_b

    .line 1728
    :cond_2f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 1332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1333
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/Operation;

    .line 1334
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1335
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1336
    goto :goto_b

    .line 1337
    :cond_24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist touchCancel(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FFFF)V
    .registers 12

    .line 1320
    iget-object p4, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    if-eqz p4, :cond_27

    .line 1321
    iget-object p4, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mAppliedTouchOperations:Ljava/util/HashSet;

    invoke-virtual {p4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_a
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_20

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    move-object v0, p5

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 1322
    const/4 v5, 0x1

    move-object v2, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->onTouchCancel(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;FFZ)V

    .line 1323
    goto :goto_a

    .line 1324
    :cond_20
    move-object v2, p0

    iget-object p1, v2, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mAppliedTouchOperations:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    goto :goto_28

    .line 1320
    :cond_27
    move-object v2, p0

    .line 1326
    :goto_28
    const/4 p1, 0x1

    iput p1, v2, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRepaintNext:I

    .line 1327
    return-void
.end method

.method public blacklist touchDown(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FF)V
    .registers 6

    .line 1275
    const/16 v0, 0xd

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 1276
    const/16 v0, 0xe

    invoke-virtual {p1, v0, p3}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 1277
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mTouchListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/TouchListener;

    .line 1278
    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/TouchListener;->touchDown(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FF)V

    .line 1279
    goto :goto_10

    .line 1280
    :cond_20
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    if-eqz v0, :cond_29

    .line 1281
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    invoke-virtual {v0, p1, p0, p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->onTouchDown(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;FF)V

    .line 1283
    :cond_29
    const/4 p1, 0x1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRepaintNext:I

    .line 1284
    return-void
.end method

.method public blacklist touchDrag(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FF)Z
    .registers 13

    .line 1251
    const/16 v0, 0xd

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 1252
    const/16 v0, 0xe

    invoke-virtual {p1, v0, p3}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 1253
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mTouchListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/TouchListener;

    .line 1254
    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/TouchListener;->touchDrag(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FF)V

    .line 1255
    goto :goto_10

    .line 1256
    :cond_20
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    const/4 v1, 0x1

    if-eqz v0, :cond_4b

    .line 1257
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mAppliedTouchOperations:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 1258
    const/4 v8, 0x1

    move-object v5, p0

    move-object v4, p1

    move v6, p2

    move v7, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->onTouchDrag(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;FFZ)V

    .line 1259
    goto :goto_2b

    .line 1260
    :cond_41
    move-object v5, p0

    iget-object p1, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mAppliedTouchOperations:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4c

    .line 1261
    return v1

    .line 1256
    :cond_4b
    move-object v5, p0

    .line 1264
    :cond_4c
    iget-object p1, v5, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mTouchListeners:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v1

    return p1
.end method

.method public blacklist touchUp(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FFFF)V
    .registers 15

    .line 1296
    const/16 v0, 0xd

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 1297
    const/16 v0, 0xe

    invoke-virtual {p1, v0, p3}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    .line 1298
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mTouchListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/remotecompose/core/TouchListener;

    .line 1299
    move-object v4, p1

    move v6, p3

    move v7, p4

    move v8, p5

    move-object v3, v5

    move v5, p2

    invoke-interface/range {v3 .. v8}, Lcom/android/internal/widget/remotecompose/core/TouchListener;->touchUp(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FFFF)V

    .line 1300
    goto :goto_10

    .line 1301
    :cond_26
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRootLayoutComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    if-eqz v0, :cond_4c

    .line 1302
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mAppliedTouchOperations:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_30
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 1303
    const/4 v7, 0x1

    move-object v2, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->onTouchUp(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/CoreDocument;FFFFZ)V

    .line 1304
    goto :goto_30

    .line 1305
    :cond_47
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mAppliedTouchOperations:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1307
    :cond_4c
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRepaintNext:I

    .line 1308
    return-void
.end method
