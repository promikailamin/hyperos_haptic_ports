.class public final Lcom/android/internal/os/ZygoteInitImpl$Provider$SINGLETON;
.super Ljava/lang/Object;
.source "ZygoteInitImpl$Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/ZygoteInitImpl$Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SINGLETON"
.end annotation


# static fields
.field public static final blacklist INSTANCE:Lcom/android/internal/os/ZygoteInitImpl;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Lcom/android/internal/os/ZygoteInitImpl;

    invoke-direct {v0}, Lcom/android/internal/os/ZygoteInitImpl;-><init>()V

    sput-object v0, Lcom/android/internal/os/ZygoteInitImpl$Provider$SINGLETON;->INSTANCE:Lcom/android/internal/os/ZygoteInitImpl;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
