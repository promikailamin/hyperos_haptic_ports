.class public Landroid/widget/EditorStubImpl;
.super Ljava/lang/Object;
.source "EditorStubImpl.java"

# interfaces
.implements Landroid/widget/EditorStub;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/EditorStubImpl$HandleData;,
        Landroid/widget/EditorStubImpl$MiuiHandWritingHandlePositionListener;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = true

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mMiuiHandWritingHandlePositionListener:Landroid/widget/EditorStubImpl$MiuiHandWritingHandlePositionListener;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/widget/EditorStubImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 19
    const-class v0, Landroid/widget/EditorStubImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/widget/EditorStubImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist init(Landroid/widget/TextView;)V
    .registers 3
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 24
    new-instance v0, Landroid/widget/EditorStubImpl$MiuiHandWritingHandlePositionListener;

    invoke-direct {v0, p1}, Landroid/widget/EditorStubImpl$MiuiHandWritingHandlePositionListener;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/EditorStubImpl;->mMiuiHandWritingHandlePositionListener:Landroid/widget/EditorStubImpl$MiuiHandWritingHandlePositionListener;

    .line 26
    return-void
.end method

.method public blacklist insertionHandlePositionChanged(ILandroid/graphics/RectF;)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "rectF"    # Landroid/graphics/RectF;

    .line 33
    iget-object v0, p0, Landroid/widget/EditorStubImpl;->mMiuiHandWritingHandlePositionListener:Landroid/widget/EditorStubImpl$MiuiHandWritingHandlePositionListener;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditorStubImpl$MiuiHandWritingHandlePositionListener;->insertionHandlePositionChanged(ILandroid/graphics/RectF;)V

    .line 34
    return-void
.end method

.method public blacklist needSendHandlePosition()Z
    .registers 2

    .line 29
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist selectionHandlePositionChanged(ZILandroid/graphics/RectF;)V
    .registers 5
    .param p1, "startHandle"    # Z
    .param p2, "type"    # I
    .param p3, "rectF"    # Landroid/graphics/RectF;

    .line 37
    iget-object v0, p0, Landroid/widget/EditorStubImpl;->mMiuiHandWritingHandlePositionListener:Landroid/widget/EditorStubImpl$MiuiHandWritingHandlePositionListener;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/EditorStubImpl$MiuiHandWritingHandlePositionListener;->selectionHandlePositionChanged(ZILandroid/graphics/RectF;)V

    .line 39
    return-void
.end method
