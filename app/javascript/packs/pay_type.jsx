import React           from 'react'
import { createRoot }  from 'react-dom/client';
import PayTypeSelector from 'PayTypeSelector'

document.addEventListener('turbolinks:load', function() {
  const container = document.getElementById("pay-type-component");
  const root = createRoot(container);
  root.render(<PayTypeSelector />);
});
