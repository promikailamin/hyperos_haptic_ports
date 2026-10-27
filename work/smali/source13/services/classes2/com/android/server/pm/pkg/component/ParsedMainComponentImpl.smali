.class public Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;
.super Lcom/android/server/pm/pkg/component/ParsedComponentImpl;
.source "ParsedMainComponentImpl.java"

# interfaces
.implements Lcom/android/server/pm/pkg/component/ParsedMainComponent;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private attributionTags:[Ljava/lang/String;

.field private directBootAware:Z

.field private enabled:Z

.field private exported:Z

.field private order:I

.field private processName:Ljava/lang/String;

.field private splitName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 114
    new-instance v0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl$1;

    invoke-direct {v0}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl$1;-><init>()V

    sput-object v0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 54
    invoke-direct {p0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;-><init>()V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->enabled:Z

    .line 55
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 104
    invoke-direct {p0, p1}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;-><init>(Landroid/os/Parcel;)V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->enabled:Z

    .line 105
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->processName:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->directBootAware:Z

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->enabled:Z

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->exported:Z

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->order:I

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->splitName:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->createString8Array()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->attributionTags:[Ljava/lang/String;

    .line 112
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/pkg/component/ParsedMainComponent;)V
    .registers 3
    .param p1, "other"    # Lcom/android/server/pm/pkg/component/ParsedMainComponent;

    .line 58
    invoke-direct {p0, p1}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;-><init>(Lcom/android/server/pm/pkg/component/ParsedComponent;)V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->enabled:Z

    .line 59
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->getProcessName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->processName:Ljava/lang/String;

    .line 60
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->isDirectBootAware()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->directBootAware:Z

    .line 61
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->enabled:Z

    .line 62
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->isExported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->exported:Z

    .line 63
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->getOrder()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->order:I

    .line 64
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->getSplitName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->splitName:Ljava/lang/String;

    .line 65
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->getAttributionTags()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->attributionTags:[Ljava/lang/String;

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZZILjava/lang/String;[Ljava/lang/String;)V
    .registers 9
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "directBootAware"    # Z
    .param p3, "enabled"    # Z
    .param p4, "exported"    # Z
    .param p5, "order"    # I
    .param p6, "splitName"    # Ljava/lang/String;
    .param p7, "attributionTags"    # [Ljava/lang/String;

    .line 150
    invoke-direct {p0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;-><init>()V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->enabled:Z

    .line 151
    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->processName:Ljava/lang/String;

    .line 152
    iput-boolean p2, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->directBootAware:Z

    .line 153
    iput-boolean p3, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->enabled:Z

    .line 154
    iput-boolean p4, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->exported:Z

    .line 155
    iput p5, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->order:I

    .line 156
    iput-object p6, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->splitName:Ljava/lang/String;

    .line 157
    iput-object p7, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->attributionTags:[Ljava/lang/String;

    .line 160
    return-void
.end method

.method private __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 234
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public getAttributionTags()[Ljava/lang/String;
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->attributionTags:[Ljava/lang/String;

    if-nez v0, :cond_6

    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    :cond_6
    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    .line 77
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOrder()I
    .registers 2

    .line 184
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->order:I

    return v0
.end method

.method public getProcessName()Ljava/lang/String;
    .registers 2

    .line 164
    iget-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->processName:Ljava/lang/String;

    return-object v0
.end method

.method public getSplitName()Ljava/lang/String;
    .registers 2

    .line 189
    iget-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->splitName:Ljava/lang/String;

    return-object v0
.end method

.method public isDirectBootAware()Z
    .registers 2

    .line 169
    iget-boolean v0, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->directBootAware:Z

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .line 174
    iget-boolean v0, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->enabled:Z

    return v0
.end method

.method public isExported()Z
    .registers 2

    .line 179
    iget-boolean v0, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->exported:Z

    return v0
.end method

.method public varargs setAttributionTags([Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;
    .registers 2
    .param p1, "value"    # [Ljava/lang/String;

    .line 224
    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->attributionTags:[Ljava/lang/String;

    .line 225
    return-object p0
.end method

.method public setDirectBootAware(Z)Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;
    .registers 2
    .param p1, "value"    # Z

    .line 194
    iput-boolean p1, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->directBootAware:Z

    .line 195
    return-object p0
.end method

.method public setEnabled(Z)Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;
    .registers 2
    .param p1, "value"    # Z

    .line 200
    iput-boolean p1, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->enabled:Z

    .line 201
    return-object p0
.end method

.method public setExported(Z)Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;
    .registers 2
    .param p1, "value"    # Z

    .line 206
    iput-boolean p1, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->exported:Z

    .line 207
    return-object p0
.end method

.method public setOrder(I)Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;
    .registers 2
    .param p1, "value"    # I

    .line 212
    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->order:I

    .line 213
    return-object p0
.end method

.method public setProcessName(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;
    .registers 3
    .param p1, "processName"    # Ljava/lang/String;

    .line 69
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->processName:Ljava/lang/String;

    .line 70
    return-object p0
.end method

.method public setSplitName(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .line 218
    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->splitName:Ljava/lang/String;

    .line 219
    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 93
    invoke-super {p0, p1, p2}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 94
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    .line 95
    iget-boolean v0, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->directBootAware:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 96
    iget-boolean v0, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->enabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 97
    iget-boolean v0, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->exported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 98
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->order:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->splitName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->attributionTags:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8Array([Ljava/lang/String;)V

    .line 101
    return-void
.end method
