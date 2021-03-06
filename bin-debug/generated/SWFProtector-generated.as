
/**
 *  Generated by mxmlc 4.0
 *
 *  Package:    
 *  Class:      SWFProtector
 *  Source:     /Users/edgarcai/DevelopWorkSpace/flash/flashdevelop/SWFProtector/src/SWFProtector.mxml
 *  Template:   flex2/compiler/mxml/gen/ClassDef.vm
 *  Time:       2012.03.19 09:26:02 CST
 */

package 
{

import flash.accessibility.*;
import flash.debugger.*;
import flash.display.*;
import flash.errors.*;
import flash.events.*;
import flash.external.*;
import flash.geom.*;
import flash.media.*;
import flash.net.*;
import flash.printing.*;
import flash.profiler.*;
import flash.system.*;
import flash.text.*;
import flash.ui.*;
import flash.utils.*;
import flash.xml.*;
import mx.binding.*;
import mx.binding.IBindingClient;
import mx.containers.HDividedBox;
import mx.containers.ViewStack;
import mx.controls.ProgressBar;
import mx.controls.ToggleButtonBar;
import mx.core.ClassFactory;
import mx.core.DeferredInstanceFromClass;
import mx.core.DeferredInstanceFromFunction;
import mx.core.IDeferredInstance;
import mx.core.IFactory;
import mx.core.IFlexModuleFactory;
import mx.core.IPropertyChangeNotifier;
import mx.core.mx_internal;
import mx.events.FlexEvent;
import mx.filters.*;
import mx.styles.*;
import spark.components.Application;
import spark.components.Button;
import spark.components.CheckBox;
import spark.components.Label;
import spark.components.NavigatorContent;
import spark.components.TextArea;
import spark.skins.spark.ApplicationSkin;


[SWF( backgroundColor='0', pageTitle='SwfProtector')]
[Frame(extraClass="_SWFProtector_FlexInit")]

[Frame(factoryClass="_SWFProtector_mx_managers_SystemManager")]


//  begin class def
public class SWFProtector
    extends spark.components.Application
    implements mx.binding.IBindingClient
{

    //  instance variables
    [Bindable]
	/**
 * @private
 **/
    public var Encyption : spark.components.NavigatorContent;

    [Bindable]
	/**
 * @private
 **/
    public var Obfuscation : spark.components.NavigatorContent;

    [Bindable]
	/**
 * @private
 **/
    public var btnDeencrypt : spark.components.Button;

    [Bindable]
	/**
 * @private
 **/
    public var btnEncrypt : spark.components.Button;

    [Bindable]
	/**
 * @private
 **/
    public var btnObfuscate : spark.components.Button;

    [Bindable]
	/**
 * @private
 **/
    public var btnSave : spark.components.Button;

    [Bindable]
	/**
 * @private
 **/
    public var btnSelect : spark.components.Button;

    [Bindable]
	/**
 * @private
 **/
    public var chkboxDebug : spark.components.CheckBox;

    [Bindable]
	/**
 * @private
 **/
    public var loadProgress : mx.controls.ProgressBar;

    [Bindable]
	/**
 * @private
 **/
    public var logInfo : spark.components.TextArea;

    [Bindable]
	/**
 * @private
 **/
    public var parseProgress : mx.controls.ProgressBar;

    [Bindable]
	/**
 * @private
 **/
    public var swfinfo : spark.components.NavigatorContent;

    [Bindable]
	/**
 * @private
 **/
    public var taginfo : spark.components.NavigatorContent;

    [Bindable]
	/**
 * @private
 **/
    public var toggbtnBarTitle : mx.controls.ToggleButtonBar;

    [Bindable]
	/**
 * @private
 **/
    public var txtAreaExcludeString : spark.components.TextArea;

    [Bindable]
	/**
 * @private
 **/
    public var txtAreaIncludeString : spark.components.TextArea;

    [Bindable]
	/**
 * @private
 **/
    public var txtAreaSWFInfo : spark.components.TextArea;

    [Bindable]
	/**
 * @private
 **/
    public var viewstackContents : mx.containers.ViewStack;


    //  type-import dummies



    //  constructor (Flex display object)
    /**
     * @private
     **/
    public function SWFProtector()
    {
        super();

        mx_internal::_document = this;


        var bindings:Array = _SWFProtector_bindingsSetup();
        var watchers:Array = [];

        var target:Object = this;

        if (_watcherSetupUtil == null)
        {
            var watcherSetupUtilClass:Object = getDefinitionByName("_SWFProtectorWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
        }

        _watcherSetupUtil.setup(this,
                    function(propertyName:String):* { return target[propertyName]; },
                    function(propertyName:String):* { return SWFProtector[propertyName]; },
                    bindings,
                    watchers);

        mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
        mx_internal::_watchers = mx_internal::_watchers.concat(watchers);


        // layer initializers

       
        // properties
        this.minWidth = 955;
        this.minHeight = 600;
        this.mxmlContentFactory = new mx.core.DeferredInstanceFromFunction(_SWFProtector_Array1_c);


        // events
        this.addEventListener("creationComplete", ___SWFProtector_Application1_creationComplete);










        for (var i:uint = 0; i < bindings.length; i++)
        {
            Binding(bindings[i]).execute();
        }


    }

    /**
     * @private
     **/ 
    private var __moduleFactoryInitialized:Boolean = false;

    /**
     * @private
     * Override the module factory so we can defer setting style declarations
     * until a module factory is set. Without the correct module factory set
     * the style declaration will end up in the wrong style manager.
     **/ 
    override public function set moduleFactory(factory:IFlexModuleFactory):void
    {
        super.moduleFactory = factory;
        
        if (__moduleFactoryInitialized)
            return;

        __moduleFactoryInitialized = true;


        // our style settings
        //  initialize component styles
        if (!this.styleDeclaration)
        {
            this.styleDeclaration = new CSSStyleDeclaration(null, styleManager);
        }

        this.styleDeclaration.defaultFactory = function():void
        {
            this.backgroundAlpha = 0.9;
            this.backgroundColor = 0;
            this.fontFamily = "Arial";
            this.skinClass = spark.skins.spark.ApplicationSkin;
        };


        // ambient styles
        mx_internal::_SWFProtector_StylesInit();

                         
    }
 
    //  initialize()
    /**
     * @private
     **/
    override public function initialize():void
    {


        super.initialize();
    }


    //  scripts
    //  <Script>, line 13 - 275

			import com.edgarcai.app.Config;
			import com.edgarcai.decompiler.*;
			import com.edgarcai.decompiler.abc.tokens.ConstantPoolToken;
			import com.edgarcai.decompiler.abc.tokens.NamespaceToken;
			import com.edgarcai.decompiler.abc.tokens.ScriptInfoToken;
			import com.edgarcai.decompiler.abc.tokens.TraitsInfoToken;
			import com.edgarcai.decompiler.abc.tokens.traits.TraitSlotToken;
			import com.edgarcai.decompiler.data.swf.records.ImportAssets2Record;
			import com.edgarcai.decompiler.data.swf9.tags.DoABCTag;
			import com.edgarcai.decompiler.events.*;
			import com.edgarcai.decompiler.utils.ABCToActionScript;
			import com.edgarcai.decompiler.utils.ReadableMultiname;
			import com.edgarcai.decompiler.utils.ReadableTrait;
			import com.edgarcai.utils.*;
			
			import flash.net.*;
			
			import mx.controls.VRule;
			
			import nochump.util.zip.ZipEntry;
			import nochump.util.zip.ZipOutput;
			
			private var _fileReference:FileReference = new FileReference();
			private var _auldByteArray:ByteArray;
			
			//程序初始化
			private var currentTagId:int=-1;
			private var lastSource:ByteArray;
			private var result:SWFReadResult;
			private var lastResult:SWFReadResult;
			private var tagDumpCache:Array;
			private var tagHexCache:Array;			
			private var customNamespaces:Object;
			private var parseStart:uint;
			//abc转actionscript
			private var translator:ABCToActionScript;
			private var _fzip:ZipOutput;
			private var classes:Array;
			private function onAppInit():void
			{
				this._fileReference.addEventListener(Event.SELECT, onSelectSWFHandler);
				this._fileReference.addEventListener(Event.COMPLETE, onFileCompleteSWFHandler);
				this.btnSelect.addEventListener(MouseEvent.CLICK,onSelectHandler);
				this.btnSave.addEventListener(MouseEvent.CLICK,saveZipFile);
			}
			
			private function onSelectSWFHandler(_arg1:Event):void{
				this._fileReference.load();
				this.addLog(("\n加载 "+this._fileReference.name + " 成功."));
			}
			
			//选择SWF文件
			private function onSelectHandler(e:MouseEvent):void
			{
				var _fileFilter:FileFilter = new FileFilter("SWF File", "*.swf");
				this._fileReference.browse([_fileFilter]);				
			}
			
			//文件加载完成
			private function onFileCompleteSWFHandler(e:Event):void
			{
				_fzip = new ZipOutput();
				classes = [];
				_auldByteArray =this._fileReference.data;
				if(_auldByteArray)
				{
					currentTagId = -1;
					parse(_auldByteArray);
				}
				else
				{
					this.addLog('请选择swf文件.');
				}
			}
			
			private function parse(bytes:ByteArray):void
			{
				this.addLog('>>>正在解析 '+bytes.length/1024/1024+'m 数据，请稍候...');
				
				var context:LoaderContext = new LoaderContext(false, ApplicationDomain.currentDomain);
				
				lastSource = bytes;
				
				//ByteArrayUtil.dumpHex(bytes);
				
				var swfBytes:SWFByteArray = new SWFByteArray(bytes);
				var swf:AsyncSWFReader = new AsyncSWFReader();
				
				swf.catchErrors = true;
				
				swf.addEventListener(AsyncSWFReaderEvent.TAG_READ, tagReadHandler);
				swf.addEventListener(AsyncSWFReaderEvent.READ_COMPLETE, readCompleteHandler);
				
				loadProgress.setProgress(0, 0);
				parseStart = getTimer();
				result = swf.read(swfBytes);
			}
			
			private function readCompleteHandler(ev:AsyncSWFReaderEvent):void
			{
				this.addLog('>>>>>>共解析了 '+result.tagMetadata.length+' Tags ('+ev.context.bytes.getLength()+' bytes) 花费 '+(getTimer() - parseStart)+'毫秒.');
				doneHandler();
			}
			
			private function doneHandler():void
			{
				loadProgress.setProgress(1, 1);
				
				if(result.errors.length > 0)
				{
					this.addLog(result.warnings.length+' errors:');
					this.addLog(result.errors.join('\n'));
				}
				else
				{
					this.addLog('>>>>>>无错误!');
				}
				
				if(result.warnings.length > 0)
				{
					this.addLog(result.warnings.length+' warnings:');
					this.addLog('\t'+result.warnings.join('\n\t'));
				}
				else
				{
					this.addLog('>>>>>>无警告!');
				}
				lastResult = result;
				tagDumpCache = [];
				tagHexCache = [];
				customNamespaces = {};
				
				var dp:Array = [];
				dp.push({id: -1, displayId: '', name: 'SWFHeader', size: lastResult.tagMetadata[0].start});
				
				for(var iterTag:uint = 0; iterTag < result.tagMetadata.length; iterTag++)
				{
					var metadata:Object = result.tagMetadata[iterTag];
					var label:String = metadata.name.substr(metadata.name.indexOf('::') + 2);
					dp.push({name: label, id: iterTag, displayId: iterTag, size: metadata.length});
					var abc:DoABCTag = result.swf.tags[iterTag] as DoABCTag;
					//doabctag
					if(abc)
					{
						translator = new ABCToActionScript(abc.abcFile);
						translator.showActionScript =false;
						translator.showByteCode = true;
						translator.showDebug = false;
						translator.showStack = false;
						translator.showBranchInfo = false;
						var cpool:ConstantPoolToken = abc.abcFile.cpool;
						//cpool info
						var ConstantPool:String = ObjectUtil.objectToString(cpool, 10, 3, 80, 100, true, '	');
						
						var classcount:uint=abc.abcFile.classCount;
						var ns:String;
						var name:String;
						
						var iter:uint = 0;
						for each(var script:ScriptInfoToken in abc.abcFile.scripts)
						{
							for(var iter2:uint = 0; iter2 < script.traitCount; iter2++)
							{
								var trait:TraitsInfoToken = script.traits[iter2];
								var r:ReadableTrait = new ReadableTrait();
								translator.getReadableTrait(trait, r);
								classes.push({id: iterTag, className: r.declaration.name, packageName: r.declaration.namespace, trait: trait});
								var start:uint = getTimer();
								var singletext:String = translator.scriptTraitToString(r);
								trace('Decompiling script took '+(getTimer() - start)+'ms\n');
								trace("as代码：\n"+singletext);
								//actionscript代码
								var _byte:ByteArray = new ByteArray();
								_byte.writeUTFBytes(singletext);
								var filename:String =[r.declaration.namespace, '.', r.declaration.name,'.as' ].join('');
								var entry:ZipEntry=new ZipEntry(filename);
								_fzip.putNextEntry(entry);
								_fzip.write(_byte);
								_fzip.closeEntry();
								iter++;
							}
						}
					}
				}
				if(_fzip.size>0)
				{
					_fzip.finish();
				}
				this.showSwfInfo();
			}
			
			private function showSwfInfo():void
			{
				this.toggbtnBarTitle.selectedIndex = 0;
				this.viewstackContents.selectedIndex = 0;
				this.txtAreaSWFInfo.setFocus();
				this.txtAreaSWFInfo.text = "";
				this.txtAreaSWFInfo.appendText("signature:"+result.swf.header.signature+"\n");
				this.txtAreaSWFInfo.appendText("flashplayer版本：:"+result.swf.header.fileVersion+"\n");
				this.txtAreaSWFInfo.appendText("帧频:"+result.swf.header.frameRate+"\n");
				this.txtAreaSWFInfo.appendText("总帧数:"+result.swf.header.frameCount+"\n");
			}
			
			private function tagReadHandler(ev:AsyncSWFReaderEvent):void
			{
				var current:uint = ev.context.bytes.getBytePosition();
				var max:uint = ev.context.bytes.getLength();
				parseProgress.setProgress(current, max);
			}
			
			private function getFileBinary(bytes:ByteArray):Array
			{
				var pos:int = bytes.position;
				bytes.position = 0;
				var resultArray:Array = new Array();
				while (bytes.bytesAvailable >= 8)
				{
					resultArray.push(getHex(bytes.readUnsignedByte()));
					resultArray.push(getHex(bytes.readUnsignedByte()));
					resultArray.push(getHex(bytes.readUnsignedByte()));
					resultArray.push(getHex(bytes.readUnsignedByte()));
					resultArray.push(getHex(bytes.readUnsignedByte()));
					resultArray.push(getHex(bytes.readUnsignedByte()));
					resultArray.push(getHex(bytes.readUnsignedByte()));
					resultArray.push(getHex(bytes.readUnsignedByte()));
				}
				if (bytes.bytesAvailable>1) 
				{
					resultArray.push(getHex(bytes.readUnsignedByte()));
				}
				if (bytes.bytesAvailable) {
					resultArray.push(getHex(bytes.readUnsignedByte()));
				}
				bytes.position = pos;
				return resultArray;
			}
			
			//获得二进制值为：
			private function getHex(n:uint):String {
				if(n <= 0xF){
					return "0"+ n.toString(2);
				}else{
					return n.toString(2);
				}
			}
			
			private function addLog(logInfo:String):void
			{
				this.logInfo.appendText(logInfo+"\n");				
			}
			
			private function saveZipFile(e:MouseEvent=null):void
			{
				var filecount:uint = _fzip.size;
				if(filecount!=0)
				{
					var file:FileReference = new FileReference();
					file.save(_fzip.byteArray,"as3src.zip");
				}
			}
			
		

    //  end scripts


    //  supporting function definitions for properties, events, styles, effects
private function _SWFProtector_Array1_c() : Array
{
	var temp : Array = [_SWFProtector_HDividedBox1_c(), _SWFProtector_ToggleButtonBar1_i(), _SWFProtector_Button5_i(), _SWFProtector_Button6_i(), _SWFProtector_Label3_c(), _SWFProtector_Label4_c(), _SWFProtector_Label5_c(), _SWFProtector_Label6_c(), _SWFProtector_ProgressBar1_i(), _SWFProtector_ProgressBar2_i()];
	return temp;
}

private function _SWFProtector_HDividedBox1_c() : mx.containers.HDividedBox
{
	var temp : mx.containers.HDividedBox = new mx.containers.HDividedBox();
	temp.left = 0;
	temp.right = 0;
	temp.top = 99;
	temp.bottom = 0;
	if (!temp.document) temp.document = this;
	temp.mx_internal::_documentDescriptor = 
		new mx.core.UIComponentDescriptor({
		  type: mx.containers.HDividedBox
		  ,
		  propertiesFactory: function():Object { return {
		    childDescriptors: [
		      new mx.core.UIComponentDescriptor({
		        type: mx.containers.ViewStack
		        ,
		        id: "viewstackContents"
		        ,
		        propertiesFactory: function():Object { return {
		          width: 847,
		          percentHeight: 100.0,
		          childDescriptors: [
		            new mx.core.UIComponentDescriptor({
		              type: spark.components.NavigatorContent
		              ,
		              id: "swfinfo"
		              ,
		              propertiesFactory: function():Object { return {
		                percentWidth: 100.0,
		                percentHeight: 100.0,
		                label: "SWF Info",
		                mxmlContentFactory: new mx.core.DeferredInstanceFromFunction(_SWFProtector_Array2_c)
		              }}
		            })
		          ,
		            new mx.core.UIComponentDescriptor({
		              type: spark.components.NavigatorContent
		              ,
		              id: "Obfuscation"
		              ,
		              propertiesFactory: function():Object { return {
		                percentWidth: 100.0,
		                percentHeight: 100.0,
		                label: "Obfuscation",
		                mxmlContentFactory: new mx.core.DeferredInstanceFromFunction(_SWFProtector_Array3_c)
		              }}
		            })
		          ,
		            new mx.core.UIComponentDescriptor({
		              type: spark.components.NavigatorContent
		              ,
		              id: "Encyption"
		              ,
		              propertiesFactory: function():Object { return {
		                percentWidth: 100.0,
		                percentHeight: 100.0,
		                label: "Encyption",
		                mxmlContentFactory: new mx.core.DeferredInstanceFromFunction(_SWFProtector_Array4_c)
		              }}
		            })
		          ,
		            new mx.core.UIComponentDescriptor({
		              type: spark.components.NavigatorContent
		              ,
		              id: "taginfo"
		              ,
		              propertiesFactory: function():Object { return {
		                percentWidth: 100.0,
		                percentHeight: 100.0,
		                label: "Tag Info",
		                mxmlContentFactory: new mx.core.DeferredInstanceFromFunction(_SWFProtector_Array5_c)
		              }}
		            })
		          ]
		        }}
		      })
		    ,
		      new mx.core.UIComponentDescriptor({
		        type: spark.components.TextArea
		        ,
		        id: "logInfo"
		        ,
		        stylesFactory: function():void {
		          this.color = 16777215;
		        }
		        ,
		        propertiesFactory: function():Object { return {
		          width: 192,
		          percentHeight: 100.0
		        }}
		      })
		    ]
		  }}
		})
	;
	temp.mx_internal::_documentDescriptor.document = this;
	return temp;
}

private function _SWFProtector_Array2_c() : Array
{
	var temp : Array = [_SWFProtector_TextArea1_i()];
	return temp;
}

private function _SWFProtector_TextArea1_i() : spark.components.TextArea
{
	var temp : spark.components.TextArea = new spark.components.TextArea();
	temp.x = 0;
	temp.y = 0;
	temp.percentWidth = 100.0;
	temp.percentHeight = 100.0;
	temp.setStyle("color", 63045);
	temp.id = "txtAreaSWFInfo";
	if (!temp.document) temp.document = this;
	txtAreaSWFInfo = temp;
	mx.binding.BindingManager.executeBindings(this, "txtAreaSWFInfo", txtAreaSWFInfo);
	return temp;
}

private function _SWFProtector_Array3_c() : Array
{
	var temp : Array = [_SWFProtector_TextArea2_i(), _SWFProtector_TextArea3_i(), _SWFProtector_Label1_c(), _SWFProtector_Label2_c(), _SWFProtector_Button1_i(), _SWFProtector_CheckBox1_i()];
	return temp;
}

private function _SWFProtector_TextArea2_i() : spark.components.TextArea
{
	var temp : spark.components.TextArea = new spark.components.TextArea();
	temp.y = 25;
	temp.left = 0;
	temp.right = 0;
	temp.height = 179;
	temp.setStyle("chromeColor", 0);
	temp.setStyle("color", 63045);
	temp.id = "txtAreaExcludeString";
	if (!temp.document) temp.document = this;
	txtAreaExcludeString = temp;
	mx.binding.BindingManager.executeBindings(this, "txtAreaExcludeString", txtAreaExcludeString);
	return temp;
}

private function _SWFProtector_TextArea3_i() : spark.components.TextArea
{
	var temp : spark.components.TextArea = new spark.components.TextArea();
	temp.y = 237;
	temp.left = 0;
	temp.right = 0;
	temp.height = 179;
	temp.setStyle("color", 63045);
	temp.id = "txtAreaIncludeString";
	if (!temp.document) temp.document = this;
	txtAreaIncludeString = temp;
	mx.binding.BindingManager.executeBindings(this, "txtAreaIncludeString", txtAreaIncludeString);
	return temp;
}

private function _SWFProtector_Label1_c() : spark.components.Label
{
	var temp : spark.components.Label = new spark.components.Label();
	temp.x = 10;
	temp.y = 5;
	temp.text = "Exclude strings";
	if (!temp.document) temp.document = this;
	return temp;
}

private function _SWFProtector_Label2_c() : spark.components.Label
{
	var temp : spark.components.Label = new spark.components.Label();
	temp.x = 10;
	temp.y = 222;
	temp.text = "inlude strings";
	if (!temp.document) temp.document = this;
	return temp;
}

private function _SWFProtector_Button1_i() : spark.components.Button
{
	var temp : spark.components.Button = new spark.components.Button();
	temp.x = 320;
	temp.y = 446;
	temp.height = 32;
	temp.label = "Obfuscate";
	temp.id = "btnObfuscate";
	if (!temp.document) temp.document = this;
	btnObfuscate = temp;
	mx.binding.BindingManager.executeBindings(this, "btnObfuscate", btnObfuscate);
	return temp;
}

private function _SWFProtector_CheckBox1_i() : spark.components.CheckBox
{
	var temp : spark.components.CheckBox = new spark.components.CheckBox();
	temp.x = 412;
	temp.y = 451;
	temp.label = "debug mode";
	temp.id = "chkboxDebug";
	if (!temp.document) temp.document = this;
	chkboxDebug = temp;
	mx.binding.BindingManager.executeBindings(this, "chkboxDebug", chkboxDebug);
	return temp;
}

private function _SWFProtector_Array4_c() : Array
{
	var temp : Array = [_SWFProtector_Button2_i(), _SWFProtector_Button3_i()];
	return temp;
}

private function _SWFProtector_Button2_i() : spark.components.Button
{
	var temp : spark.components.Button = new spark.components.Button();
	temp.x = 66;
	temp.y = 39;
	temp.label = "Encrypt";
	temp.id = "btnEncrypt";
	if (!temp.document) temp.document = this;
	btnEncrypt = temp;
	mx.binding.BindingManager.executeBindings(this, "btnEncrypt", btnEncrypt);
	return temp;
}

private function _SWFProtector_Button3_i() : spark.components.Button
{
	var temp : spark.components.Button = new spark.components.Button();
	temp.x = 66;
	temp.y = 88;
	temp.label = "DeEncrypt";
	temp.id = "btnDeencrypt";
	if (!temp.document) temp.document = this;
	btnDeencrypt = temp;
	mx.binding.BindingManager.executeBindings(this, "btnDeencrypt", btnDeencrypt);
	return temp;
}

private function _SWFProtector_Array5_c() : Array
{
	var temp : Array = [_SWFProtector_Button4_c()];
	return temp;
}

private function _SWFProtector_Button4_c() : spark.components.Button
{
	var temp : spark.components.Button = new spark.components.Button();
	temp.x = 217;
	temp.y = 174;
	temp.label = "TagInfo";
	if (!temp.document) temp.document = this;
	return temp;
}

private function _SWFProtector_ToggleButtonBar1_i() : mx.controls.ToggleButtonBar
{
	var temp : mx.controls.ToggleButtonBar = new mx.controls.ToggleButtonBar();
	temp.x = 0;
	temp.y = 47;
	temp.width = 479;
	temp.height = 46;
	temp.id = "toggbtnBarTitle";
	if (!temp.document) temp.document = this;
	toggbtnBarTitle = temp;
	mx.binding.BindingManager.executeBindings(this, "toggbtnBarTitle", toggbtnBarTitle);
	return temp;
}

private function _SWFProtector_Button5_i() : spark.components.Button
{
	var temp : spark.components.Button = new spark.components.Button();
	temp.x = 871;
	temp.y = 12;
	temp.width = 68;
	temp.height = 27;
	temp.label = "Save...";
	temp.setStyle("color", 16777215);
	temp.id = "btnSave";
	if (!temp.document) temp.document = this;
	btnSave = temp;
	mx.binding.BindingManager.executeBindings(this, "btnSave", btnSave);
	return temp;
}

private function _SWFProtector_Button6_i() : spark.components.Button
{
	var temp : spark.components.Button = new spark.components.Button();
	temp.x = 714;
	temp.y = 12;
	temp.width = 145;
	temp.height = 27;
	temp.label = "Select a SWF...";
	temp.setStyle("color", 16777215);
	temp.id = "btnSelect";
	if (!temp.document) temp.document = this;
	btnSelect = temp;
	mx.binding.BindingManager.executeBindings(this, "btnSelect", btnSelect);
	return temp;
}

private function _SWFProtector_Label3_c() : spark.components.Label
{
	var temp : spark.components.Label = new spark.components.Label();
	temp.x = 10;
	temp.y = 10;
	temp.text = "SWF";
	temp.setStyle("color", 16757760);
	temp.setStyle("fontSize", 30);
	temp.setStyle("fontWeight", "bold");
	if (!temp.document) temp.document = this;
	return temp;
}

private function _SWFProtector_Label4_c() : spark.components.Label
{
	var temp : spark.components.Label = new spark.components.Label();
	temp.x = 80;
	temp.y = 10;
	temp.text = "Protector";
	temp.setStyle("color", 16777215);
	temp.setStyle("fontSize", 30);
	temp.setStyle("fontWeight", "bold");
	if (!temp.document) temp.document = this;
	return temp;
}

private function _SWFProtector_Label5_c() : spark.components.Label
{
	var temp : spark.components.Label = new spark.components.Label();
	temp.x = 223;
	temp.y = 10;
	temp.text = "beta";
	if (!temp.document) temp.document = this;
	return temp;
}

private function _SWFProtector_Label6_c() : spark.components.Label
{
	var temp : spark.components.Label = new spark.components.Label();
	temp.y = 77;
	temp.right = 10;
	temp.text = "copyright @2011 厦门啊菜";
	if (!temp.document) temp.document = this;
	return temp;
}

private function _SWFProtector_ProgressBar1_i() : mx.controls.ProgressBar
{
	var temp : mx.controls.ProgressBar = new mx.controls.ProgressBar();
	temp.bottom = 0;
	temp.percentWidth = 100.0;
	temp.height = 20;
	temp.label = "Loading SWF: %3%%";
	temp.labelPlacement = "center";
	temp.maximum = 1;
	temp.minimum = 0;
	temp.mode = "manual";
	temp.id = "loadProgress";
	if (!temp.document) temp.document = this;
	loadProgress = temp;
	mx.binding.BindingManager.executeBindings(this, "loadProgress", loadProgress);
	return temp;
}

private function _SWFProtector_ProgressBar2_i() : mx.controls.ProgressBar
{
	var temp : mx.controls.ProgressBar = new mx.controls.ProgressBar();
	temp.x = -1;
	temp.bottom = 0;
	temp.percentWidth = 100.0;
	temp.height = 20;
	temp.label = "Parsing SWF: %3%%";
	temp.labelPlacement = "center";
	temp.maximum = 1;
	temp.minimum = 0;
	temp.mode = "manual";
	temp.id = "parseProgress";
	if (!temp.document) temp.document = this;
	parseProgress = temp;
	mx.binding.BindingManager.executeBindings(this, "parseProgress", parseProgress);
	return temp;
}

/**
 * @private
 **/
public function ___SWFProtector_Application1_creationComplete(event:mx.events.FlexEvent):void
{
	onAppInit()
}


    //  binding mgmt
    private function _SWFProtector_bindingsSetup():Array
    {
        var result:Array = [];

        result[0] = new mx.binding.Binding(this,
            null,
            null,
            "toggbtnBarTitle.dataProvider"
            , "viewstackContents");


        return result;
    }


    /**
     * @private
     **/
    public static function set watcherSetupUtil(watcherSetupUtil:IWatcherSetupUtil2):void
    {
        (SWFProtector)._watcherSetupUtil = watcherSetupUtil;
    }

    private static var _watcherSetupUtil:IWatcherSetupUtil2;

    //  initialize style defs for SWFProtector

    mx_internal var _SWFProtector_StylesInit_done:Boolean = false;

    mx_internal function _SWFProtector_StylesInit():void
    {
        //  only add our style defs to the style manager once
        if (mx_internal::_SWFProtector_StylesInit_done)
            return;
        else
            mx_internal::_SWFProtector_StylesInit_done = true;
            
        var style:CSSStyleDeclaration;
        var effects:Array;
                    

        var conditions:Array;
        var condition:CSSCondition;
        var selector:CSSSelector;
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("global", conditions, selector);
        // global
        style = styleManager.getStyleDeclaration("global");
        if (!style)
        {
            style = new CSSStyleDeclaration(selector, styleManager);
        }

        if (style.factory == null)
        {
            style.factory = function():void
            {
                this.backgroundSize = "auto";
                this.baseColor = 13421772;
                this.contentBackgroundAlpha = 0.77;
                this.chromeColor = 0x2e2e2e;
                this.alignmentBaseline = "useDominantBaseline";
                this.rollOverColor = 0x6b6b6b;
                this.fontStyle = "normal";
                this.fontSize = 14;
                this.selectionColor = 0x6b6b6b;
                this.backgroundAlpha = 1;
                this.fontWeight = "normal";
                this.textDecoration = "none";
                this.slideDuration = 300;
                this.focusColor = 0x6b6b6b;
                this.color = 0xffffff;
                this.symbolColor = 0x2e2e2e;
                this.fontFamily = "Arial";
                this.contentBackgroundColor = 0x000000;
            };
        }





        styleManager.initProtoChainRoots();
    }


    //  embed carrier vars
    //  end embed carrier vars

    //  binding management vars
    /**
     * @private
     **/
    mx_internal var _bindings : Array = [];
    /**
     * @private
     **/
    mx_internal var _watchers : Array = [];
    /**
     * @private
     **/
    mx_internal var _bindingsByDestination : Object = {};
    /**
     * @private
     **/
    mx_internal var _bindingsBeginWithWord : Object = {};

//  end class def
}

//  end package def
}
