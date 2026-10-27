.class public final Landroid/os/VibratorStubImpl$Provider$SINGLETON;
.super Ljava/lang/Object;
.source "VibratorStubImpl$Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/VibratorStubImpl$Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SINGLETON"
.end annotation


# static fields
.field public static final blacklist INSTANCE:Landroid/os/VibratorStubImpl;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Landroid/os/VibratorStubImpl;

    invoke-direct {v0}, Landroid/os/VibratorStubImpl;-><init>()V

    sput-object v0, Landroid/os/VibratorStubImpl$Provider$SINGLETON;->INSTANCE:Landroid/os/VibratorStubImpl;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
