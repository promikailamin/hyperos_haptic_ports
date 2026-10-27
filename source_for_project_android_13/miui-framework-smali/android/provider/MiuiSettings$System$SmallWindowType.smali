.class public final enum Landroid/provider/MiuiSettings$System$SmallWindowType;
.super Ljava/lang/Enum;
.source "MiuiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MiuiSettings$System;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SmallWindowType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/provider/MiuiSettings$System$SmallWindowType;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/provider/MiuiSettings$System$SmallWindowType;

.field public static final enum blacklist A1_STYLE:Landroid/provider/MiuiSettings$System$SmallWindowType;

.field public static final enum blacklist A7_LATTICE:Landroid/provider/MiuiSettings$System$SmallWindowType;

.field public static final enum blacklist B7_FULL:Landroid/provider/MiuiSettings$System$SmallWindowType;

.field public static final enum blacklist X7_STYLE:Landroid/provider/MiuiSettings$System$SmallWindowType;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 9

    .line 2454
    new-instance v0, Landroid/provider/MiuiSettings$System$SmallWindowType;

    const-string v1, "X7_STYLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/provider/MiuiSettings$System$SmallWindowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/MiuiSettings$System$SmallWindowType;->X7_STYLE:Landroid/provider/MiuiSettings$System$SmallWindowType;

    new-instance v1, Landroid/provider/MiuiSettings$System$SmallWindowType;

    const-string v3, "A1_STYLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroid/provider/MiuiSettings$System$SmallWindowType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/provider/MiuiSettings$System$SmallWindowType;->A1_STYLE:Landroid/provider/MiuiSettings$System$SmallWindowType;

    new-instance v3, Landroid/provider/MiuiSettings$System$SmallWindowType;

    const-string v5, "A7_LATTICE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroid/provider/MiuiSettings$System$SmallWindowType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroid/provider/MiuiSettings$System$SmallWindowType;->A7_LATTICE:Landroid/provider/MiuiSettings$System$SmallWindowType;

    new-instance v5, Landroid/provider/MiuiSettings$System$SmallWindowType;

    const-string v7, "B7_FULL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroid/provider/MiuiSettings$System$SmallWindowType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroid/provider/MiuiSettings$System$SmallWindowType;->B7_FULL:Landroid/provider/MiuiSettings$System$SmallWindowType;

    .line 2453
    const/4 v7, 0x4

    new-array v7, v7, [Landroid/provider/MiuiSettings$System$SmallWindowType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Landroid/provider/MiuiSettings$System$SmallWindowType;->$VALUES:[Landroid/provider/MiuiSettings$System$SmallWindowType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2454
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/provider/MiuiSettings$System$SmallWindowType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 2453
    const-class v0, Landroid/provider/MiuiSettings$System$SmallWindowType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/provider/MiuiSettings$System$SmallWindowType;

    return-object v0
.end method

.method public static blacklist values()[Landroid/provider/MiuiSettings$System$SmallWindowType;
    .registers 1

    .line 2453
    sget-object v0, Landroid/provider/MiuiSettings$System$SmallWindowType;->$VALUES:[Landroid/provider/MiuiSettings$System$SmallWindowType;

    invoke-virtual {v0}, [Landroid/provider/MiuiSettings$System$SmallWindowType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/provider/MiuiSettings$System$SmallWindowType;

    return-object v0
.end method
