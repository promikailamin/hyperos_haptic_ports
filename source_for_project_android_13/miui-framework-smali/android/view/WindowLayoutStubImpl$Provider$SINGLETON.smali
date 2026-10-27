.class public final Landroid/view/WindowLayoutStubImpl$Provider$SINGLETON;
.super Ljava/lang/Object;
.source "WindowLayoutStubImpl$Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowLayoutStubImpl$Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SINGLETON"
.end annotation


# static fields
.field public static final blacklist INSTANCE:Landroid/view/WindowLayoutStubImpl;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Landroid/view/WindowLayoutStubImpl;

    invoke-direct {v0}, Landroid/view/WindowLayoutStubImpl;-><init>()V

    sput-object v0, Landroid/view/WindowLayoutStubImpl$Provider$SINGLETON;->INSTANCE:Landroid/view/WindowLayoutStubImpl;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
