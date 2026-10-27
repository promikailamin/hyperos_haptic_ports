.class public final Landroid/app/ApplicationImpl$Provider$SINGLETON;
.super Ljava/lang/Object;
.source "ApplicationImpl$Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ApplicationImpl$Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SINGLETON"
.end annotation


# static fields
.field public static final blacklist INSTANCE:Landroid/app/ApplicationImpl;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Landroid/app/ApplicationImpl;

    invoke-direct {v0}, Landroid/app/ApplicationImpl;-><init>()V

    sput-object v0, Landroid/app/ApplicationImpl$Provider$SINGLETON;->INSTANCE:Landroid/app/ApplicationImpl;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
