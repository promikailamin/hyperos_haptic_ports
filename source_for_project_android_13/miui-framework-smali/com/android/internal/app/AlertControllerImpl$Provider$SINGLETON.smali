.class public final Lcom/android/internal/app/AlertControllerImpl$Provider$SINGLETON;
.super Ljava/lang/Object;
.source "AlertControllerImpl$Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/AlertControllerImpl$Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SINGLETON"
.end annotation


# static fields
.field public static final blacklist INSTANCE:Lcom/android/internal/app/AlertControllerImpl;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Lcom/android/internal/app/AlertControllerImpl;

    invoke-direct {v0}, Lcom/android/internal/app/AlertControllerImpl;-><init>()V

    sput-object v0, Lcom/android/internal/app/AlertControllerImpl$Provider$SINGLETON;->INSTANCE:Lcom/android/internal/app/AlertControllerImpl;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
