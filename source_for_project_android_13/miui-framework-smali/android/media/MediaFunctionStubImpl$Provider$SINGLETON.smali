.class public final Landroid/media/MediaFunctionStubImpl$Provider$SINGLETON;
.super Ljava/lang/Object;
.source "MediaFunctionStubImpl$Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaFunctionStubImpl$Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SINGLETON"
.end annotation


# static fields
.field public static final blacklist INSTANCE:Landroid/media/MediaFunctionStubImpl;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Landroid/media/MediaFunctionStubImpl;

    invoke-direct {v0}, Landroid/media/MediaFunctionStubImpl;-><init>()V

    sput-object v0, Landroid/media/MediaFunctionStubImpl$Provider$SINGLETON;->INSTANCE:Landroid/media/MediaFunctionStubImpl;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
