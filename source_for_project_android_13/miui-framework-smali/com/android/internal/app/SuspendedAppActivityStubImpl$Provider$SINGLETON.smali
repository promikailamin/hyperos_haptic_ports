.class public final Lcom/android/internal/app/SuspendedAppActivityStubImpl$Provider$SINGLETON;
.super Ljava/lang/Object;
.source "SuspendedAppActivityStubImpl$Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/SuspendedAppActivityStubImpl$Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SINGLETON"
.end annotation


# static fields
.field public static final blacklist INSTANCE:Lcom/android/internal/app/SuspendedAppActivityStubImpl;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Lcom/android/internal/app/SuspendedAppActivityStubImpl;

    invoke-direct {v0}, Lcom/android/internal/app/SuspendedAppActivityStubImpl;-><init>()V

    sput-object v0, Lcom/android/internal/app/SuspendedAppActivityStubImpl$Provider$SINGLETON;->INSTANCE:Lcom/android/internal/app/SuspendedAppActivityStubImpl;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
