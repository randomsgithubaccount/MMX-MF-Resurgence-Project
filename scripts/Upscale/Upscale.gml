function Upscale(argument0) {
	switch (argument0) {
	    case "create":
	    {   
	        break;
	    }

	    case "predraw":
	    {
	        var width = surface_get_width(application_surface);
	        var height = surface_get_height(application_surface);
	        var windowWidth = window_get_width();
	        var windowHeight = window_get_height();
        
	        // Calculate render width and height
	        var resizeScale = windowWidth / width;
	        var resizedHeight = floor(floor(windowHeight / resizeScale) / 4) * 4; // Make height to be divided by 4
        
	        var maxHeight = width * (height / width);
	        if resizedHeight < maxHeight {
	            resizeScale = windowHeight / maxHeight;
	        }
        
	        renderWidth = floor(width * resizeScale + 0.5);
	        renderHeight = floor(height * resizeScale + 0.5);
        
	        renderUseScaler = ((renderWidth % width) != 0 || (renderHeight % height) != 0);

	        break;
	    }
    
	    case "postdraw":
	    {
	        if (renderUseScaler) 
	        {
	            var width = surface_get_width(application_surface);
	            var height = surface_get_height(application_surface);
	            var windowWidth = window_get_width();
	            var windowHeight = window_get_height();
        
	            // Render with pixel art upscale shader
	            shader_set(sdr_upscale);
	            shader_set_uniform_f(shader_get_uniform(sdr_upscale, "bitmap_width"), width);
	            shader_set_uniform_f(shader_get_uniform(sdr_upscale, "bitmap_height"), height);
	            shader_set_uniform_f(shader_get_uniform(sdr_upscale, "x_scale"), renderWidth / width);
	            shader_set_uniform_f(shader_get_uniform(sdr_upscale, "y_scale"), renderHeight / height);
        
	            var offsetX = (windowWidth - renderWidth) / 2;
	            var offsetY = (windowHeight - renderHeight) / 2;
            
	            application_surface_draw_enable(false);
	            surface_resize(application_surface,renderWidth,renderHeight);
	            draw_clear_alpha(c_black,0);
	            draw_surface_stretched(application_surface,offsetX, offsetY, renderWidth, renderHeight);

	            shader_reset();
	        }

	        break;
	    }
	}



}
