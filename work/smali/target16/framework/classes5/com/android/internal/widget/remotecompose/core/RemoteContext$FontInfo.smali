.class public Lcom/android/internal/widget/remotecompose/core/RemoteContext$FontInfo;
.super Ljava/lang/Object;
.source "RemoteContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/remotecompose/core/RemoteContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FontInfo"
.end annotation


# instance fields
.field public blacklist fontBuilder:Ljava/lang/Object;

.field public final blacklist mFontData:[B

.field public final blacklist mFontId:I


# direct methods
.method constructor blacklist <init>(I[B)V
    .registers 4

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 407
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext$FontInfo;->fontBuilder:Ljava/lang/Object;

    .line 416
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext$FontInfo;->mFontId:I

    .line 417
    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/RemoteContext$FontInfo;->mFontData:[B

    .line 418
    return-void
.end method
