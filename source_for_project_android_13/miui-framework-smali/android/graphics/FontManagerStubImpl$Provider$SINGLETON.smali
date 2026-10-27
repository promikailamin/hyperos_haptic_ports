.class public final Landroid/graphics/FontManagerStubImpl$Provider$SINGLETON;
.super Ljava/lang/Object;
.source "FontManagerStubImpl$Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/FontManagerStubImpl$Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SINGLETON"
.end annotation


# static fields
.field public static final blacklist INSTANCE:Landroid/graphics/FontManagerStubImpl;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Landroid/graphics/FontManagerStubImpl;

    invoke-direct {v0}, Landroid/graphics/FontManagerStubImpl;-><init>()V

    sput-object v0, Landroid/graphics/FontManagerStubImpl$Provider$SINGLETON;->INSTANCE:Landroid/graphics/FontManagerStubImpl;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
